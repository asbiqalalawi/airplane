import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/booking_details_item.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              height: 65,
              width: 291,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_checkout.png',
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TLC',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Ciliwung',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget checkoutDetails() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: Destination Tile
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/image_destination1.png',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'Tangerang',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      margin: const EdgeInsets.only(right: 4),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/icon_star.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '4.6',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                'Booking Details',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              ),
            ),
            const BookingDetailsItem(
              title: 'Traveler',
              value: '2 Person',
            ),
            const BookingDetailsItem(
              title: 'Seat',
              value: 'A3, B2',
            ),
            const BookingDetailsItem(
              title: 'Insurance',
              value: 'YES',
              valueColor: greenColor,
            ),
            const BookingDetailsItem(
              title: 'Refundable',
              value: 'No',
              valueColor: pinkColor,
            ),
            const BookingDetailsItem(
              title: 'VAT',
              value: '45%',
            ),
            const BookingDetailsItem(
              title: 'Price',
              value: 'IDR 8.500.690',
            ),
            const BookingDetailsItem(
              title: 'Grand Total',
              value: 'IDR 12.000.000',
              valueColor: primaryColor,
            ),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 70,
                  margin: const EdgeInsets.only(
                    top: 16,
                    right: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/image_card.png',
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        margin: const EdgeInsets.only(right: 6),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon_plane.png',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Pay',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 80.400.000',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Current Balance',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          route(),
          checkoutDetails(),
          paymentDetails(),
        ],
      ),
    );
  }
}
