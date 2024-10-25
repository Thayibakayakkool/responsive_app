import 'package:flutter/material.dart';
import 'package:responsive_app/core/config/color/colors_manager.dart';
import 'package:responsive_app/core/config/constants/value_manager.dart';

class CustomTextFormFieldWidgets extends StatelessWidget {
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String labelText;
  final String hintText;
  final double? width;

  const CustomTextFormFieldWidgets({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    required this.labelText,
    required this.hintText,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p28),
      child: SizedBox(
        width: width,
        child: TextFormField(
          style: TextStyle(
            color: ColorsManager.amber,
          ),
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            labelText: labelText,
            labelStyle: TextStyle(
              color: ColorsManager.amber,
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: ColorsManager.amber,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManager.amber,
              ),
              borderRadius: BorderRadius.circular(AppSize.s12),
            ),
          ),
        ),
      ),
    );
  }
}
