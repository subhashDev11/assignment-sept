import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subhash_chandra_s_application3/core/app_export.dart';
import 'package:subhash_chandra_s_application3/state/upload_image_provider.dart';

class ChooseDesignScreen extends StatelessWidget {
  const ChooseDesignScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 11.v,
                ),
                decoration: AppDecoration.fillOnPrimary,
                child: Text(
                  "lbl_change_design".tr,
                  style: CustomTextStyles.titleMediumRobotoBlack900,
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<UploadImageProvider>().pickImage(context);
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(20.h, 30.v, 20.h, 5.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 42.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.fillBlue.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgMaterialsymbolsmagicbutton,
                        height: 27.v,
                        width: 24.h,
                        margin: EdgeInsets.only(bottom: 21.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 48.h,
                          top: 16.v,
                          bottom: 13.v,
                        ),
                        child: Text(
                          "lbl_upload_picture".tr,
                          style: CustomTextStyles.titleMediumRobotoBlueA400,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        svgPath:
                            ImageConstant.imgMaterialsymbolsmagicbuttonBlueA400,
                        height: 19.v,
                        width: 17.h,
                        margin: EdgeInsets.only(
                          top: 26.v,
                          right: 1.h,
                          bottom: 2.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(
            left: 130.h,
            right: 130.h,
            bottom: 6.v,
          ),
          decoration: AppDecoration.fillOnPrimary,
          child: Opacity(
            opacity: 0.15,
            child: Divider(),
          ),
        ),
      ),
    );
  }

}
