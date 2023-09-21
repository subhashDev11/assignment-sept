import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subhash_chandra_s_application3/core/app_export.dart';
import 'package:subhash_chandra_s_application3/state/upload_image_provider.dart';
import 'package:subhash_chandra_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:subhash_chandra_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:subhash_chandra_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:subhash_chandra_s_application3/widgets/custom_elevated_button.dart';

class TemplateCardCustomImageScreen extends StatelessWidget {
  const TemplateCardCustomImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Consumer<UploadImageProvider>(builder: (context, state, child) {
      return SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(
              leadingWidth: 44.h,
              leading: AppbarImage(
                  svgPath: ImageConstant.imgArrowleft,
                  margin: EdgeInsets.only(left: 20.h, top: 10.v, bottom: 10.v),
                  onTap: () {
                    onTapArrowleftone(context);
                  }),
              title: AppbarTitle(
                  text: "lbl_upload_picture2".tr,
                  margin: EdgeInsets.only(left: 14.h)),
              styleType: Style.bgFill),
          body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
            child: Column(
              children: [
                CustomImageView(
                  file: state.pickedImageFile,
                  imagePath: state.pickedImageFile != null
                      ? ImageConstant.imgJosuemichelom
                      : null,
                  height: 504.v,
                  width: 327.h,
                  radius: BorderRadius.circular(12.h),
                ),
                SizedBox(height: 15.v),
                Text(
                  "msg_picture_ready_to".tr,
                  style: CustomTextStyles
                      .titleMediumAvenirNextLTProOnPrimaryContainer,
                ),
                SizedBox(height: 68.v),
                CustomElevatedButton(
                    text: "lbl_save_continue".tr,
                    onTap: (){
                      context.read<UploadImageProvider>().saveAndUpload(context);
                    },
                ),
                SizedBox(height: 5.v)
              ],
            ),
          ),
          bottomNavigationBar: Container(
            margin: EdgeInsets.only(left: 130.h, right: 130.h, bottom: 6.v),
            decoration: AppDecoration.fillOnPrimary,
            child: Opacity(
              opacity: 0.15,
              child: Divider(),
            ),
          ),
        ),
      );
    });
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
