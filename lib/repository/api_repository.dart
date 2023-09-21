import 'package:subhash_chandra_s_application3/core/app_export.dart';
import 'package:subhash_chandra_s_application3/core/utils/app_logger.dart';
import 'package:subhash_chandra_s_application3/data/network/base_api_services.dart';
import 'package:subhash_chandra_s_application3/data/network/network_api_services.dart';
import 'package:subhash_chandra_s_application3/data/response/card_detail_model.dart';
import 'package:subhash_chandra_s_application3/data/response/custom_response_model.dart';

class ApiRepository {
  final BaseApiServices _apiServices = NetworkApiResponse();

  Future<CustomResponseModel?> postProfileBannerImage(
      {required String imagePath, required String uid}) async {
    try {
      var response = await _apiServices.getUploadFileApiResponse(
        dataMap: ({
          "uid": uid,
        }),
        filepath: imagePath,
        url: postProfileBannerImageURL,
      );
      return response;
    } catch (e) {
      AppLogger.e(e.toString());
      return null;
    }
  }

  Future<CardDetailModel?> getCardDetailsById() async {
    try {
      var response = await _apiServices.getPostApiResponse(
        selectedCardDesignDetailsURL,
        {"cardImageId": cardId},
      );
      if(response.success && response.data!=null
          && response.data['result']!=null && response.data['result'] is List &&
          (response.data['result']).isNotEmpty){
       return CardDetailModel.fromJson(response.data['result'].first);
      }else{
        return null;
      }
    } catch (e) {
      AppLogger.e(e.toString());
      return null;
    }
  }
}
