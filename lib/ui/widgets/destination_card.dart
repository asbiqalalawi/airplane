import 'package:airplane/model/destination_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/detail_page.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final DestinationModel destination;

  const DestinationCard({
    Key? key,
    required this.destination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailPage(destination),
        ),
      ),
      child: Container(
        height: 323,
        width: 200,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: 180,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    destination.imageUrl,
                  ),
                ),
                borderRadius: BorderRadius.circular(
                  18,
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 30,
                  width: 55,
                  decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        margin: const EdgeInsets.only(right: 1),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon_star.png',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        destination.rating.toString(),
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: Text(
                destination.name,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
            ),
            Text(
              destination.city,
              style: greyTextStyle.copyWith(
                fontWeight: light,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
