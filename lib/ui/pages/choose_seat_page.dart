import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/button_container.dart';
import 'package:airplane/ui/widgets/seat_item.dart';
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
        child: Column(
          children: [
            // Seat Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 46,
                  child: Text(
                    'A',
                    style: greyTextStyle.copyWith(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 46,
                  child: Text(
                    'B',
                    style: greyTextStyle.copyWith(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 46,
                  child: Text(
                    '',
                    style: greyTextStyle.copyWith(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 46,
                  child: Text(
                    'C',
                    style: greyTextStyle.copyWith(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 46,
                  child: Text(
                    'D',
                    style: greyTextStyle.copyWith(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            // Seat 1
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    status: 2,
                  ),
                  const SeatItem(
                    status: 2,
                  ),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '1',
                        style: greyTextStyle.copyWith(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                  const SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
            //Seat 2
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    status: 0,
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '2',
                        style: greyTextStyle.copyWith(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                  const SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
            // Seat 3
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    status: 1,
                  ),
                  const SeatItem(
                    status: 1,
                  ),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '3',
                        style: greyTextStyle.copyWith(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),
            // Seat 4
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    status: 0,
                  ),
                  const SeatItem(
                    status: 2,
                  ),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '4',
                        style: greyTextStyle.copyWith(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),
            // Seat 5
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    status: 0,
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '5',
                        style: greyTextStyle.copyWith(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SeatItem(
                    status: 2,
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),
            // Your Seat and Total
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your seat',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'A3, B3',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'IDR 540.000.000',
                        style: purpleTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Total
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return ContainerButton(
          margin: const EdgeInsets.only(top: 30, bottom: 46),
          text: 'Continue to Checkout',
          onPress: () {
            Navigator.pushNamed(
              context,
              '/checkout',
            );
          });
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
            checkoutButton(),
          ],
        ),
      ),
    );
  }
}
