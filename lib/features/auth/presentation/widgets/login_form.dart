import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/font_manager.dart';
import 'package:ecommerce/core/resources/styles_manager.dart';
import 'package:ecommerce/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:ecommerce/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          'User Name',
          style: getMediumStyle(
            color: ColorManager.white,
            fontSize: FontSize.s18,
          ),
        ),
        SizedBox(height: 24.h),
        CustomTextFormField(hint: 'name', controller: nameController),
        SizedBox(height: 24.h),
        Text(
          'Password',
          style: getMediumStyle(
            color: ColorManager.white,
            fontSize: FontSize.s18,
          ),
        ),
        SizedBox(height: 24.h),
        CustomTextFormField(
          hint: 'password',
          isPassword: true,
          controller: passwordController,
        ),
        SizedBox(height: 16.h),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Forgot Password?',
            style: getRegularStyle(
              color: ColorManager.white,
              fontSize: FontSize.s16,
            ),
          ),
        ),
        SizedBox(height: 56.h),
        const CustomElevatedButton(label: 'Login'),
      ],
    );
  }
}
