import 'package:airplane/cubit/seat_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  // Status 0. Available 1. Selected 2. Unavailable
  final String id;
  final bool isAvailable;

  const SeatItem({
    Key? key,
    required this.id,
    this.isAvailable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    color() {
      if (!isAvailable) {
        return unavailableColor;
      } else {
        if (isSelected) {
          return primaryColor;
        } else {
          return availableColor;
        }
      }
    }

    border() {
      if (isAvailable) {
        return primaryColor;
      } else {
        return unavailableColor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
          child: Text(
            'YOU',
            style: whiteTextStyle.copyWith(fontWeight: semiBold),
            textAlign: TextAlign.center,
          ),
        );
      } else {
        return const SizedBox();
      }
    }

    return GestureDetector(
      onTap: () => isAvailable ? context.read<SeatCubit>().selectSeat(id) : null,
      child: Container(
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
        child: child(),
      ),
    );
  }
}
