import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/styles_manager.dart';
import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:ecommerce/core/routes/routes.dart';
import 'package:ecommerce/features/auth/presentation/widgets/auth_header.dart';
import 'package:ecommerce/features/auth/presentation/widgets/login_form.dart';
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                const AuthHeader(),
                SizedBox(height: 50.h),
                const LoginText(),
                SizedBox(height: 40.h),
                const LoginForm(),
                SizedBox(height: 32.h),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: getMediumStyle(
                          color: ColorManager.white,
                          fontSize: 16.sp,
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, Routes.register),
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            color: ColorManager.white,
                            fontSize: 16.sp,
                            decoration: TextDecoration.underline,
                            decorationColor: ColorManager.white,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
