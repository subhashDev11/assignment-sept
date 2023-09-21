import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:subhash_chandra_s_application3/core/app_export.dart';
import 'package:subhash_chandra_s_application3/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SelectImageSourceBottomSheet extends StatelessWidget {
  const SelectImageSourceBottomSheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 116.h,
        vertical: 35.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomImageView(
                    onTap: (){
                      Navigator.of(context).pop(ImageSource.camera);
                    },
                    svgPath: ImageConstant.imgGroup13977,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    margin: EdgeInsets.only(right: 20.h),
                  ),
                ),
                Expanded(
                  child: CustomIconButton(
                    onTap: (){
                      Navigator.of(context).pop(ImageSource.gallery);
                    },
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    margin: EdgeInsets.only(left: 20.h),
                    padding: EdgeInsets.all(13.h),
                    decoration: IconButtonStyleHelper.outlineBlueGray,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgDownload,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 3.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "lbl_camera".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Text(
                  "lbl_gallery".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
