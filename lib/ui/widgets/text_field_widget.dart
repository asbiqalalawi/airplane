import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController controller;

  const TextFieldWidget({
    Key? key,
    required this.title,
    this.obscureText = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: regular,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            controller: controller,
            cursorColor: blackColor,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
                borderSide: const BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
