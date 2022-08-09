import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(right: 6),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_available.png'),
                ),
              ),
            ),
            Text(
              'Available',
              style: blackTextStyle,
            ),
            Container(
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(right: 6, left: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_selected.png'),
                ),
              ),
            ),
            Text(
              'Selected',
              style: blackTextStyle,
            ),
            Container(
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(right: 6, left: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_unavailable.png'),
                ),
              ),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    Widget chooseSeat() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'A',
                style: greyTextStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'B',
                style: greyTextStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                '',
                style: greyTextStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'C',
                style: greyTextStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'D',
                style: greyTextStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            seatStatus(),
            chooseSeat(),
          ],
        ),
      ),
    );
  }
}
