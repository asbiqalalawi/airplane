import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {
  final String text;
  const InterestItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            height: 16,
            width: 16,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_check.png',
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            text,
            style: blackTextStyle,
          ),
        ],
      ),
    );
  }
}
