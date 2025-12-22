import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:ecommerce/features/auth/presentation/widgets/auth_header.dart';
import 'package:ecommerce/features/auth/presentation/widgets/login_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Insets.s16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthHeader(),
              SizedBox(height: 50.h),
              const LoginText(),
            ],
          ),
        ),
      ),
    );
  }
}
