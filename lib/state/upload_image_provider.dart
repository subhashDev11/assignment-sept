import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:subhash_chandra_s_application3/core/locator.dart';
import 'package:subhash_chandra_s_application3/core/utils/file_utility.dart';
import 'package:subhash_chandra_s_application3/core/utils/flashbar_utility.dart';
import 'package:subhash_chandra_s_application3/core/utils/image_picker_utility.dart';
import 'package:subhash_chandra_s_application3/core/utils/progress_utils.dart';
import 'package:subhash_chandra_s_application3/data/response/card_detail_model.dart';
import 'package:subhash_chandra_s_application3/presentation/select_image_source_bottomsheet/select_image_source_bottomsheet.dart';
import 'package:subhash_chandra_s_application3/repository/api_repository.dart';
import 'package:subhash_chandra_s_application3/routes/app_navigation.dart';
import 'package:uuid/uuid.dart';

class UploadImageProvider extends ChangeNotifier {
  File? _pickedImageFile;

  File? get pickedImageFile => _pickedImageFile;
  bool _uploading = false;

  bool get uploading => _uploading;

  String? _uId;
  String? get cardId => _uId;

  String? _profileImageURL;
  String? get profileImageURL => _profileImageURL;

  CardDetailModel? _cardDetailModel;
  CardDetailModel? get cardDetailModel => _cardDetailModel;

  /// Shows a modal bottom sheet with [SelectCategoryOneBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  Future<ImageSource?> selectImageSource(BuildContext context) async {
    return await showModalBottomSheet(
      context: context,
      builder: (_) => SelectImageSourceBottomSheet(),
      isScrollControlled: true,
    );
  }

  Future<void> pickImage(BuildContext context) async {
    ImageSource? pickSource = await selectImageSource(context);
    if (pickSource != null) {
      var pickedImage = await PickImageUtility.instance(
        applyEditor: true,
        context: context,
      ).pickedFile(pickSource);
      if (pickedImage != null) {
        _pickedImageFile = pickedImage;
        notifyListeners();
        getIt<AppNavigation>().onTapTemplateCardCustomImage(context);
      }
    }
  }

  Future<void> saveAndUpload(BuildContext context) async {
    if(await onCardSubmit(context)) {
      onSaveAndUpload(context);
    }
  }

  void onSaveAndUpload(BuildContext context) {
    fetchCardDetail();
    getIt<AppNavigation>().navigateToCardView(
      context,
      replace: true,
    );
  }

  Future<bool> onCardSubmit(BuildContext context) async {
    bool success = false;
    String uid = Uuid().v4();
    ProgressUtil.showProgress(context: context);
    bool validFileSize =
        await FileUtility.isFileSizeLargerTo10MB(_pickedImageFile!);
    if (!validFileSize) {
      var result = await getIt<ApiRepository>().postProfileBannerImage(
        imagePath: _pickedImageFile!.path,
        uid: uid,
      );
      ProgressUtil.hideProgress();
      if (result != null && result.success && result.data!=null
      && result.data['result']!=null && result.data['result'] is List &&
          (result.data['result']).isNotEmpty) {
        success = true;
        var profileData = result.data['result'].first;
        _profileImageURL = profileData['profileBannerImageURL'];
        _uId = profileData['uid'];
        notifyListeners();
      }else{
        FlashbarUtil.showFlashbarMessage(
          context,
          result!.message,
          type: FlashbarType.ERROR,
        );
      }
    } else {
      ProgressUtil.hideProgress();
      FlashbarUtil.showFlashbarMessage(
        context,
        "Image size can't be larger to 10 MB",
        type: FlashbarType.ERROR,
      );
      success = false;
    }
    return success;
  }

  /// fetch card detail

  Future<void> fetchCardDetail() async{
    CardDetailModel? detailModel = await getIt<ApiRepository>().getCardDetailsById();
    if(detailModel!=null){
      _cardDetailModel = detailModel;
      notifyListeners();
    }
  }

  void onCustomizeCard(BuildContext context) {
    getIt<AppNavigation>().navigateToCustomizeCardScreen(context);
  }
}
