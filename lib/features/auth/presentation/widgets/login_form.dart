import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/font_manager.dart';
import 'package:ecommerce/core/resources/styles_manager.dart';
import 'package:ecommerce/features/auth/data/models/login_request.dart';
import 'package:ecommerce/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:ecommerce/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:ecommerce/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            'User Email',
            style: getMediumStyle(
              color: ColorManager.white,
              fontSize: FontSize.s18,
            ),
          ),
          SizedBox(height: 24.h),
          CustomTextFormField(hint: 'email', controller: _emailController),
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
            controller: _passwordController,
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
          CustomElevatedButton(
            label: 'Login',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.read<AuthCubit>().login(
                  LoginRequest(
                    email: _emailController.text,
                    password: _passwordController.text,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
