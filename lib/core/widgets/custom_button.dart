import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGroundColor,
    required this.textButtonColor,
    required this.borderRadius,
    required this.textButton,
  });
  final Color backGroundColor;
  final Color textButtonColor;

  final BorderRadius? borderRadius;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: backGroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        ),
      ),
      child: Text(
        textButton,
        style: Styles.textStyle16.copyWith(
          color: textButtonColor,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
