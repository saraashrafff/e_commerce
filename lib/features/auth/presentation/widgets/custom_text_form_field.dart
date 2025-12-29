import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/font_manager.dart';
import 'package:ecommerce/core/resources/styles_manager.dart' as styles_manager;
import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.isPassword = false,
    required this.controller,
  });
  final String hint;
  final bool isPassword;
  final TextEditingController? controller;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _isObscure,
      controller: widget.controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: Insets.s16,
          vertical: Insets.s23,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r)),
        fillColor: ColorManager.white,
        filled: true,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _isObscure
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: ColorManager.grey1,
                ),
                onPressed: () => setState(() => _isObscure = !_isObscure),
              )
            : null,
        hintText: 'enter your ${widget.hint}',
        hintStyle: styles_manager.getLightStyle(
          color: ColorManager.darkGrey,
          fontSize: FontSize.s16,
        ),
      ),
    );
  }
}
