import 'package:ecommerce/core/resources/font_manager.dart';
import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back To Route',
          style: TextStyle(
            color: Colors.white,
            fontSize: FontSize.s24,
            fontWeight: FontWeightManager.semiBold,
          ),
        ),
        Text(
          'Please sign in with your email',
          style: TextStyle(
            color: Colors.white,
            fontSize: FontSize.s16,
            fontWeight: FontWeightManager.light,
          ),
        ),
      ],
    );
  }
}
