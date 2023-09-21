
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subhash_chandra_s_application3/core/app_export.dart';
import 'package:subhash_chandra_s_application3/state/upload_image_provider.dart';
import 'package:subhash_chandra_s_application3/widgets/app_bar/appbar_image_1.dart';
import 'package:subhash_chandra_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:subhash_chandra_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:subhash_chandra_s_application3/widgets/custom_elevated_button.dart';

class CustomizationScreen extends StatelessWidget {
  const CustomizationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Consumer<UploadImageProvider>(
      builder: (context,state,child) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              title: AppbarTitle(
                text: "msg_customize_your_card".tr,
                margin: EdgeInsets.only(left: 20.h),
              ),
              actions: [
                AppbarImage1(
                  svgPath: ImageConstant.imgClose,
                  margin: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 10.v,
                  ),
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            bottomSheet: Padding(
              padding: EdgeInsets.only(
                bottom: 10.v,
                top: 10.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(right: 2.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 18.h,
                        vertical: 11.v,
                      ),
                      decoration: AppDecoration.outlineBlack,
                      child: CustomElevatedButton(
                        text: "lbl_save".tr,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: Padding(
              padding: EdgeInsets.only(top: 20.v),
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      context.read<UploadImageProvider>().pickImage(context);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.h,
                      ),
                      decoration: AppDecoration.outlineBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder6,
                      ),
                      child: DottedBorder(
                        color: appTheme.blueGray100,
                        padding: EdgeInsets.only(
                          left: 1.h,
                          top: 1.v,
                          right: 1.h,
                          bottom: 1.v,
                        ),
                        strokeWidth: 1.h,
                        radius: Radius.circular(8),
                        borderType: BorderType.RRect,
                        dashPattern: [
                          2,
                          2,
                        ],
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 48.h,
                            vertical: 14.v,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgUpload,
                                height: 20.v,
                                width: 26.h,
                                margin: EdgeInsets.only(top: 1.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.h,
                                  top: 1.v,
                                ),
                                child: Text(
                                  "msg_change_picture_here".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            url: state.profileImageURL,
                            imagePath: ImageConstant.imgCard1,
                            height: 638.v,
                            width: 335.h,
                            radius: BorderRadius.circular(10.h),
                            alignment: Alignment.center,
                            fit: BoxFit.fill,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 65.v),
                                CustomImageView(
                                  imagePath:
                                  ImageConstant.imgEllipse153,
                                  height: 116.adaptSize,
                                  width: 116.adaptSize,
                                  radius: BorderRadius.circular(
                                    58.h,
                                  ),
                                  onTap: (){},
                                ),
                                SizedBox(height: 23.v),
                                Text(
                                  "lbl_alexandra".tr,
                                  style: theme.textTheme.headlineLarge,
                                ),
                                SizedBox(height: 1.v),
                                Text(
                                  "lbl_stanton".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                                SizedBox(height: 30.v),
                                Text(
                                  "msg_realtor_vp_design".tr,
                                  style: CustomTextStyles.titleMedium16,
                                ),
                                SizedBox(height: 5.v),
                                Text(
                                  "msg_bangalore_india".tr,
                                  style: CustomTextStyles
                                      .titleMediumMedium,
                                ),
                                SizedBox(height: 213.v),
                             /*   Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                      child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgUserOnprimary,
                                            height: 32.adaptSize,
                                            width: 32.adaptSize,
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment:
                                            Alignment.centerLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10.h),
                                              child: Text(
                                                "lbl_s".tr,
                                                style: CustomTextStyles
                                                    .titleMediumAvenirNextLTPro,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                      margin:
                                      EdgeInsets.only(left: 10.h),
                                      padding: EdgeInsets.all(6.h),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgMail,
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                      margin:
                                      EdgeInsets.only(left: 10.h),
                                      padding: EdgeInsets.all(8.h),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgCall,
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                      margin:
                                      EdgeInsets.only(left: 10.h),
                                      padding: EdgeInsets.all(7.h),
                                      child: CustomImageView(
                                        svgPath:
                                        ImageConstant.imgGroup13157,
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                      margin:
                                      EdgeInsets.only(left: 10.h),
                                      padding: EdgeInsets.all(2.h),
                                      child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgNounweb5112543,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 25.v,
                                    right: 6.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgElredlogowhite,
                                        height: 40.v,
                                        width: 58.h,
                                      ),
                                      Spacer(),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgUser,
                                        height: 10.adaptSize,
                                        width: 10.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 4.h,
                                          top: 10.v,
                                          bottom: 14.v,
                                        ),
                                        child: Text(
                                          "lbl_profile".tr,
                                          style: theme
                                              .textTheme.labelLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),*/
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
