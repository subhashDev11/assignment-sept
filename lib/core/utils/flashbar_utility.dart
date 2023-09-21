import 'dart:developer';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:subhash_chandra_s_application3/core/app_export.dart';

enum FlashbarType { DEFAULT, SUCCESS, WARNING, ERROR, }

class FlashbarUtil {

  static void showFlashbar(BuildContext context,
      {String? title,
        String? message,
        FlashbarType type = FlashbarType.ERROR,int? durationInSecond}) {
    try {
      switch (type) {
        case FlashbarType.DEFAULT:
          _showTopFlash(context, title, message: message,durationInSecond: durationInSecond);
          break;
        case FlashbarType.SUCCESS:
          _showSuccessFlashbar(context, title, message,durationInSecond: durationInSecond);
          break;
        case FlashbarType.WARNING:
          _showWarningFlashbar(context, title, message,durationInSecond: durationInSecond);
          break;
        case FlashbarType.ERROR:
          _showErrorFlashbar(context, title, message);
          break;
      }
    } catch (err) {
      log("Error showing flashbar: ${err.toString()}");
    }
  }

  static void showFlashbarMessage(BuildContext context, String message,
      {FlashbarType type = FlashbarType.DEFAULT,int? durationInSecond}) async {

    switch (type) {
      case FlashbarType.DEFAULT:
        _showTopFlash(context, null, message: message);
        break;
      case FlashbarType.SUCCESS:
        _showSuccessFlashbar(context, null, message,durationInSecond: durationInSecond);
        break;
      case FlashbarType.WARNING:
        _showWarningFlashbar(context, null, message);
        break;
      case FlashbarType.ERROR:
        _showErrorFlashbar(context, null, message);
        break;
    }
  }

  static void _showSuccessFlashbar(
      BuildContext context, String? title, String? message,
      {int? durationInSecond}) {
    _showTopFlash(context, title,
      message: message,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      icon: Icons.check_circle_outline_outlined,
      iconColor: Colors.white,
      durationInSecond: durationInSecond,
    );
  }

  static void _showWarningFlashbar(
      BuildContext context, String? title, String? message,{int? durationInSecond}) {
    _showTopFlash(context, title,
        message: message,
        backgroundColor: Colors.white,
        textColor: Colors.blueGrey,
        icon: Icons.warning,
    );
  }

  static void _showErrorFlashbar(
      BuildContext context, String? title, String? message) {
    _showTopFlash(context, title,
        message: message,
      backgroundColor: appTheme.elRed,
      textColor: Colors.white,
        icon: Icons.warning,
    );
  }

  static void _showTopFlash(BuildContext context, String? title,
      {String? message,
        FlashBehavior style = FlashBehavior.floating,
        Color textColor = Colors.black,
        Color backgroundColor = Colors.white,
        IconData? icon,
        Color? iconColor,int? durationInSecond,}) {
    showFlash(
      context: context,
      duration: Duration(seconds: durationInSecond ?? 3),
      persistent: true,
      builder: (_, controller) {
        return Flash(
          controller: controller,
          backgroundColor: backgroundColor,
          brightness: Brightness.light,
          boxShadows: [BoxShadow(blurRadius: 4)],
          behavior: style,
          position: FlashPosition.top,
          child: FlashBar(
            padding: EdgeInsets.only(
                top: 14,
                bottom: 14,
                left: 20,
                right: 12,
            ),
            title: title == null
                ? SizedBox()
                : Text(
              title,
              style: TextStyle(
                  fontSize: 20, color: textColor),
            ),
            icon: icon == null
                ? null
                : Icon(
              icon,
              color: iconColor == null ? textColor : iconColor,
              size: 28,
            ),
            shouldIconPulse: false,
            content: message == null
                ? SizedBox()
                : Text(
              message,
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                letterSpacing: 0.8,
                fontFamily: 'Raleway',
              ),
            ),
            /*primaryAction: TextButton(
              onPressed: () => controller.dismiss(),
              child: Text('DISMISS', style: TextStyle(color: Colors.amber)),
            ),*/
          ),
        );
      },
    );
  }
}
