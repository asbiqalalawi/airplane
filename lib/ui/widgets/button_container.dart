import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  final String text;
  final double width;
  final Function() onPress;
  final EdgeInsets margin;

  const ContainerButton({
    Key? key,
    required this.text,
    this.width = double.infinity,
    required this.onPress,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              defaultRadius,
            ),
          ),
        ),
        onPressed: onPress,
        child: Text(
          text,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
