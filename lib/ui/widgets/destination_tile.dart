import 'package:airplane/model/destination_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/detail_page.dart';
import 'package:flutter/material.dart';

class DestinationTile extends StatelessWidget {
  final DestinationModel destination;

  const DestinationTile({
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
        margin: const EdgeInsets.only(top: 16),
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    image: NetworkImage(
                      destination.imageUrl,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      destination.name,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
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
                        fit: BoxFit.cover,
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
            ],
          ),
        ),
      ),
    );
  }
}
