import 'package:airplane/shared/theme.dart';
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
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Full Name',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: blackColor,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: const BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget emailField() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email Address',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: blackColor,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: const BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget passwordField() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: blackColor,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: const BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget hobbyField() {
        return Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hobby',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: blackColor,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: const BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget getStartedButton() {
        return SizedBox(
          height: 55,
          width: double.infinity,
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bonus');
              },
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    defaultRadius,
                  ),
                ),
              ),
              child: Text(
                'Get Started',
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              )),
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
