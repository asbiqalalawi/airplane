import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/button_container.dart';
import 'package:airplane/ui/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameField() {
        return const TextFieldWidget(
          title: 'Full Name',
        );
      }

      Widget emailField() {
        return const TextFieldWidget(
          title: 'Email Address',
        );
      }

      Widget passwordField() {
        return const TextFieldWidget(
          title: 'Password',
          obscureText: true,
        );
      }

      Widget hobbyField() {
        return const TextFieldWidget(
          title: 'Hobby',
        );
      }

      Widget getStartedButton() {
        return ContainerButton(
          text: 'Get Started',
          onPress: () {
            Navigator.pushNamed(
              context,
              '/bonus',
            );
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            nameField(),
            emailField(),
            passwordField(),
            hobbyField(),
            getStartedButton(),
          ],
        ),
      );
    }

    Widget tncButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 50, bottom: 73),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          title(),
          inputSection(),
          tncButton(),
        ],
      )),
    );
  }
}
