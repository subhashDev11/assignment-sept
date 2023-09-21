import 'package:flutter/material.dart';

import 'app_routes.dart';

class AppNavigation{

  /// Navigates to the selectCategoryOneOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the selectCategoryOneOneScreen.
  onTapSelectCategoryOneOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selectCategoryOneOneScreen);
  }


  /// Navigates to the cardViewScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cardViewScreen.
  navigateToCardView(BuildContext context, {required bool replace}) {
    if(replace){
      Navigator.pushReplacementNamed(context, AppRoutes.cardViewScreen);
    }else {
      Navigator.pushNamed(context, AppRoutes.cardViewScreen);
    }
  }

  /// Navigates to the editCardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the editCardScreen.
  navigateToEditCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editCardScreen);
  }

  /// Navigates to the customizationTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the customizationTwoScreen.
  navigateToCustomizeCardScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.customizationTwoScreen);
  }

  /// Navigates to the templateCardCustomImageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the templateCardCustomImageScreen.
  onTapTemplateCardCustomImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.templateCardCustomImageScreen);
  }

}