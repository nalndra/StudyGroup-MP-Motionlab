import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 125,
          horizontal: 45,
        ),
        child: Column(
          children: [
            LottieBuilder.asset("assets/lottie_login.json"),
            SizedBox(
              height: 30,
            ),
            Text("Welcome!"),
            Text("Happy Shopping All"),
          ],
        ),
      ),
    );
  }
}
