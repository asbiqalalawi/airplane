import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: whiteColor,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/image_profile.png',
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationCard(
                image: 'assets/image_destination1.png',
                rating: 4.8,
                name: 'Lake Ciliwung',
                city: 'Tangerang',
              ),
              DestinationCard(
                image: 'assets/image_destination2.png',
                rating: 4.7,
                name: 'White Houses',
                city: 'Spain',
              ),
              DestinationCard(
                image: 'assets/image_destination3.png',
                rating: 4.8,
                name: 'Hill Heyo',
                city: 'Monaco',
              ),
              DestinationCard(
                image: 'assets/image_destination4.png',
                rating: 5.0,
                name: 'Menarra',
                city: 'Japan',
              ),
              DestinationCard(
                image: 'assets/image_destination5.png',
                rating: 4.8,
                name: 'Payung Teduh',
                city: 'Singapore',
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 140,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const DestinationTile(
              image: 'assets/image_new1.png',
              name: 'Danau Beratan',
              city: 'Singajara',
              rating: 4.5,
            ),
            const DestinationTile(
              image: 'assets/image_new2.png',
              name: 'Sydney Opera',
              city: 'Australia',
              rating: 4.7,
            ),
            const DestinationTile(
              image: 'assets/image_new3.png',
              name: 'Roma',
              city: 'Italy',
              rating: 4.8,
            ),
            const DestinationTile(
              image: 'assets/image_new4.png',
              name: 'Payung Teduh',
              city: 'Singapore',
              rating: 4.5,
            ),
            const DestinationTile(
              image: 'assets/image_new5.png',
              name: 'Hill Hey',
              city: 'Monaco',
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: ListView(
        children: [
          header(),
          popularDestination(),
          newDestination(),
        ],
      ),
    );
  }
}
