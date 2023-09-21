import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subhash_chandra_s_application3/core/app_export.dart';
import 'package:subhash_chandra_s_application3/core/locator.dart';
import 'package:subhash_chandra_s_application3/core/utils/progress_utils.dart';
import 'package:subhash_chandra_s_application3/routes/app_navigation.dart';
import 'package:subhash_chandra_s_application3/state/upload_image_provider.dart';
import 'package:subhash_chandra_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:subhash_chandra_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:subhash_chandra_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:subhash_chandra_s_application3/widgets/custom_outlined_button.dart';

class CardViewScreen extends StatefulWidget {
  const CardViewScreen({Key? key}) : super(key: key);

  @override
  State<CardViewScreen> createState() => _CardViewScreenState();
}

class _CardViewScreenState extends State<CardViewScreen> {

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      fetchData();
    });
    super.initState();
  }

  void fetchData() async{
   ProgressUtil.showProgress(context: context);
   await context.read<UploadImageProvider>().fetchCardDetail();
   ProgressUtil.hideProgress();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Consumer<UploadImageProvider>(builder: (context, state, child) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: appTheme.gray5001,
          body: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(
                  height: 44.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 44.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            boxShadow: [
                              BoxShadow(
                                  color: appTheme.indigo90014,
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(0, 2))
                            ],
                          ),
                        ),
                      ),
                      CustomAppBar(
                        leadingWidth: 45.h,
                        leading: AppbarImage(
                            svgPath: ImageConstant.imgArrowleft,
                            margin: EdgeInsets.only(
                                left: 21.h, top: 10.v, bottom: 10.v),
                            onTap: () {
                              onTapArrowleftone(context);
                            }),
                        title: AppbarTitle(
                            text: "lbl_artist".tr,
                            margin: EdgeInsets.only(left: 14.h)),
                        styleType: Style.bgFill,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 24.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      height: 638.v,
                      width: 335.h,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        right: 20.h,
                        bottom: 5.v,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            url: state.cardDetailModel?.cardImageURL,
                            imagePath: ImageConstant.imgCard1,
                            height: 638.v,
                            width: 335.h,
                            radius: BorderRadius.circular(10.h),
                            alignment: Alignment.center,
                            fit: BoxFit.fill,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgElredlogowhite,
                                    height: 41.v,
                                    width: 58.h,
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgUser,
                                    height: 10.adaptSize,
                                    width: 10.adaptSize,
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 4.h, top: 10.v, bottom: 15.v),
                                      child: Text("lbl_profile".tr,
                                          style: theme.textTheme.labelLarge))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: CustomOutlinedButton(
            text: "lbl_edit_card".tr,
            onTap: (){
              getIt<AppNavigation>().navigateToEditCard(context);
            },
            margin: EdgeInsets.only(
              left: 20.h,
              right: 20.h,
              bottom: 41.v,
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
