import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class BookingDetailsItem extends StatelessWidget {
  final String title;
  final String value;
  final Color valueColor;
  const BookingDetailsItem({
    Key? key,
    required this.title,
    required this.value,
    this.valueColor = blackColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
      ),
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
            title,
            style: blackTextStyle,
          ),
          const Spacer(),
          Text(
            value,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              color: valueColor,
            ),
          )
        ],
      ),
    );
  }
}
