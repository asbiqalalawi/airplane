import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  // Status 0. Available 1. Selected 2. Unavailable
  final int status;
  const SeatItem({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    color() {
      switch (status) {
        case 0:
          return availableColor;
        case 1:
          return primaryColor;
        case 2:
          return unavailableColor;
        default:
          return unavailableColor;
      }
    }

    border() {
      switch (status) {
        case 0:
          return primaryColor;
        case 1:
          return primaryColor;
        case 2:
          return unavailableColor;
        default:
          return unavailableColor;
      }
    }

    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: color(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: border(),
          width: 2,
        ),
      ),
      child: status == 1
          ? Center(
              child: Text(
                'YOU',
                style: whiteTextStyle.copyWith(fontWeight: semiBold),
                textAlign: TextAlign.center,
              ),
            )
          : const SizedBox(),
    );
  }
}
