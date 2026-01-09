import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UIUtils {
  static void showLoading(BuildContext context) => showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => PopScope(
      canPop: false,
      child: AlertDialog(
        backgroundColor: ColorManager.white,
        content: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.2,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [LoadingIndicator()],
          ),
        ),
      ),
    ),
  );

  static void hideLoading(BuildContext context) => Navigator.of(context).pop();

  static void showMessage(String message) => Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: ColorManager.white,
    textColor: ColorManager.primary,
  );
}
