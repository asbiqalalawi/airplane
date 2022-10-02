import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/button_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            margin: const EdgeInsets.only(bottom: 50),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_success.png',
                ),
              ),
            ),
          ),
          Text(
            'Well Booked 😍',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Are you ready to explore the new\nworld of experiences?',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
            textAlign: TextAlign.center,
          ),
          ContainerButton(
            text: 'My Bookings',
            onPress: () {
              context.read<PageCubit>().setPage(1);
              Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
            },
            width: 220,
            margin: const EdgeInsets.only(top: 50),
          ),
        ],
      )),
    );
  }
}
