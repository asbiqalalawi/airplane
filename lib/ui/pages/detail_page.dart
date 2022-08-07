import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/photo_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        height: 450,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_destination1.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget shadowContainer() {
      return Container(
        height: 214,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              whiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ])),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // EMBLEM
              Container(
                height: 24,
                width: 108,
                margin: const EdgeInsets.only(top: 30),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_emblem.png',
                    ),
                  ),
                ),
              ),
              // TITLE
              Container(
                margin: const EdgeInsets.only(top: 256),
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lake Ciliwung',
                            style: whiteTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: semiBold,
                            ),
                          ),
                          Text(
                            'Tangerang',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
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
                          '1.2',
                          style: whiteTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              // CONTENT
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                      style: blackTextStyle.copyWith(
                        height: 2.6,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Photos',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: const [
                        PhotoItem(image: 'assets/image_photo1.png'),
                        PhotoItem(image: 'assets/image_photo2.png'),
                        PhotoItem(image: 'assets/image_photo3.png'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(children: [
        backgroundImage(),
        shadowContainer(),
        content(),
      ]),
    );
  }
}
