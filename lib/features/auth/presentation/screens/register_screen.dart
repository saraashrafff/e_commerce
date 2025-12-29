import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:ecommerce/features/auth/presentation/widgets/auth_header.dart';
import 'package:ecommerce/features/auth/presentation/widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Insets.s16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AuthHeader(),
                SizedBox(height: 40.h),
                const RegisterForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
