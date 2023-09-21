import 'package:flutter/material.dart';
import 'package:subhash_chandra_s_application3/presentation/choose_design_screen/choose_design_screen.dart';
import 'package:subhash_chandra_s_application3/presentation/template_card_custom_image_screen/template_card_custom_image_screen.dart';
import 'package:subhash_chandra_s_application3/presentation/card_view_screen/card_view_screen.dart';
import 'package:subhash_chandra_s_application3/presentation/edit_card_screen/edit_card_screen.dart';
import 'package:subhash_chandra_s_application3/presentation/customization_two_screen/customization_two_screen.dart';

class AppRoutes {
  static const String selectCategoryOneOneScreen =
      '/select_category_one_one_screen';

  static const String templateCardCustomImageScreen =
      '/template_card_custom_image_screen';

  static const String cardViewScreen = '/card_view_screen';

  static const String editCardScreen = '/edit_card_screen';

  static const String customizationTwoScreen = '/customization_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    selectCategoryOneOneScreen: (context) => ChooseDesignScreen(),
    templateCardCustomImageScreen: (context) => TemplateCardCustomImageScreen(),
    cardViewScreen: (context) => CardViewScreen(),
    editCardScreen: (context) => EditCardScreen(),
    customizationTwoScreen: (context) => CustomizationTwoScreen(),
  };
}
