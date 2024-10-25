import 'package:flutter/material.dart';
import 'package:responsive_app/core/config/constants/font_manager.dart';
import 'package:responsive_app/core/config/constants/value_manager.dart';

class CustomButtonWidgets extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  final Color? borderColor;
  final double? width;

  const CustomButtonWidgets({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
    this.borderColor = Colors.amber,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 45,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(bgColor),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(color: borderColor!),
              borderRadius: BorderRadius.circular(AppSize.s20),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: FontSize.s16,
          ),
        ),
      ),
    );
  }
}
