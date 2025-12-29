import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/font_manager.dart';
import 'package:ecommerce/core/resources/styles_manager.dart';
import 'package:ecommerce/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:ecommerce/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _mobileNumberController.dispose();
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
            'Full Name',
            style: getMediumStyle(
              color: ColorManager.white,
              fontSize: FontSize.s18,
            ),
          ),
          SizedBox(height: 24.h),
          CustomTextFormField(hint: 'full name', controller: _nameController),
          SizedBox(height: 24.h),
          Text(
            'Mobile Number',
            style: getMediumStyle(
              color: ColorManager.white,
              fontSize: FontSize.s18,
            ),
          ),
          SizedBox(height: 24.h),
          CustomTextFormField(
            hint: 'mobile number',
            controller: _mobileNumberController,
          ),
          SizedBox(height: 24.h),
          Text(
            'E-mail Address',
            style: getMediumStyle(
              color: ColorManager.white,
              fontSize: FontSize.s18,
            ),
          ),
          SizedBox(height: 24.h),
          CustomTextFormField(
            hint: 'e-mail address',
            controller: _emailController,
          ),
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
            controller: _passwordController,
            isPassword: true,
          ),
          SizedBox(height: 56.h),
          const CustomElevatedButton(label: 'Sign Up'),
        ],
      ),
    );
  }
}
