import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/cubit/destination_cubit.dart';
import 'package:airplane/model/destination_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<DestinationCubit>().fetchDestinations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
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
                          'Howdy,\n${state.user.name}',
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
          } else {
            return const SizedBox();
          }
        },
      );
    }

    Widget popularDestination(List<DestinationModel> destinations) {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
                destinations.map((DestinationModel destination) => DestinationCard(destination: destination)).toList(),
          ),
        ),
      );
    }

    Widget newDestination(List<DestinationModel> destinations) {
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
            Column(
                children: destinations
                    .map((DestinationModel destination) => DestinationTile(destination: destination))
                    .toList())
          ],
        ),
      );
    }

    return BlocConsumer<DestinationCubit, DestinationState>(
      listener: (context, state) {
        if (state is DestinationFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is DestinationSuccess) {
          return ListView(
            children: [
              header(),
              popularDestination(state.destinations),
              newDestination(state.destinations),
            ],
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
