import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/widgets/bottom_navigation_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContext() {
      return const HomePage();
    }

    Widget bottomNavigationBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 60,
          width: double.infinity,
          margin: const EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            bottom: 30,
          ),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              BottomNavigationItem(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              BottomNavigationItem(imageUrl: 'assets/icon_transaction.png'),
              BottomNavigationItem(imageUrl: 'assets/icon_payment.png'),
              BottomNavigationItem(imageUrl: 'assets/icon_setting.png'),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          buildContext(),
          bottomNavigationBar(),
        ],
      ),
    );
  }
}
