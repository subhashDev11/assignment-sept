import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subhash_chandra_s_application3/core/app_export.dart';
import 'package:subhash_chandra_s_application3/state/upload_image_provider.dart';
import 'package:subhash_chandra_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:subhash_chandra_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:subhash_chandra_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:subhash_chandra_s_application3/widgets/custom_elevated_button.dart';

class EditCardScreen extends StatelessWidget {
  const EditCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        appBar: CustomAppBar(
            leadingWidth: 45.h,
            leading: AppbarImage(
                svgPath: ImageConstant.imgArrowleft,
                margin: EdgeInsets.only(left: 21.h, top: 10.v, bottom: 10.v),
                onTap: () {
                  onTapArrowleftone(context);
                }),
            title: AppbarTitle(
                text: "msg_custom_image_card".tr,
                margin: EdgeInsets.only(left: 14.h)),
            styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    left: 23.h,
                    right: 23.h,
                    bottom: 5.v,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle3351,
                        radius: BorderRadius.circular(10.h),
                        alignment: Alignment.center,
                        width: double.infinity,
                      ),
                      Positioned(
                        right: 20,
                        top: 20,
                        child: InkWell(
                          onTap: (){
                            context.read<UploadImageProvider>()
                                .onCustomizeCard(context);
                          },
                          child: CustomElevatedButton(
                            height: 26.v,
                            width: 150,
                            text: "lbl_customize".tr,
                            buttonTextStyle: theme.textTheme.titleMedium?.copyWith(
                              color: appTheme.elRed,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w400,
                            ),
                            buttonStyle: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                )
                              ),
                            ),
                            leftIcon: Container(
                                margin: EdgeInsets.only(
                                    right: 4.h,
                                ),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgEdit,
                                    width: 20,
                                    height: 20,
                                ),
                            ),
                            alignment:
                            Alignment.centerRight,
                            isDisabled: true,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 40.v,
                            right: 14.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath:
                                ImageConstant.imgGroup15030,
                                height: 124.adaptSize,
                                width: 124.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 18.h,
                                  top: 23.v,
                                ),
                              ),
                              SizedBox(height: 23.v),
                              Text(
                                "lbl_alexandra".tr,
                                style: theme
                                    .textTheme.headlineLarge,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 42.h, top: 3.v),
                                child: Text(
                                  "lbl_stanton".tr,
                                  style: theme
                                      .textTheme.titleMedium,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "lbl_save".tr,
          margin: EdgeInsets.only(
            left: 20.h,
            right: 20.h,
            bottom: 35.v,
            top: 20.v,
          ),
          onTap: (){
            context.read<UploadImageProvider>()
                .onCustomizeCard(context);
          },
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
