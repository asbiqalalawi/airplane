import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/button_container.dart';
import 'package:airplane/ui/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Sign in with\nyour existing account',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget emailField() {
        return TextFieldWidget(
          title: 'Email Address',
          controller: emailController,
        );
      }

      Widget passwordField() {
        return TextFieldWidget(
          title: 'Password',
          obscureText: true,
          controller: passwordController,
        );
      }

      Widget getStartedButton() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return ContainerButton(
              text: 'Sign In',
              onPress: () {
                context.read<AuthCubit>().signIn(
                      email: emailController.text,
                      password: passwordController.text,
                    );
              },
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
            emailField(),
            passwordField(),
            getStartedButton(),
          ],
        ),
      );
    }

    Widget signUpButton() {
      return GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/sign-up'),
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 50, bottom: 73),
          child: Text(
            'Don\'t have an account? Sign Up',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
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
          signUpButton(),
        ],
      )),
    );
  }
}
