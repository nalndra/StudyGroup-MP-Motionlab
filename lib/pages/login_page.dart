import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            LottieBuilder.asset(
              "assets/lottie_login.json",
              width: 280,
            ),
            const SizedBox(height: 2),
            Text(
              "Welcome!",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
            ),
            Text(
              "Happy Shopping All",
              style: TextStyle(
                fontSize: 18,
                color: const Color(0xFF707070),
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 246, 246, 246),
                  hintText: "Email",
                  hintStyle: const TextStyle(color: Color(0xFF868A91)),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color(0xFF868A91),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 246, 246, 246),
                  hintText: "Password",
                  hintStyle: const TextStyle(color: Color(0xFF868A91)),
                  prefixIcon: const Icon(
                    Icons.key,
                    color: Color(0xFF868A91),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 23.0, vertical: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00623B),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  color: Colors.black, // Default color for the first part
                ),
                children: const [
                  TextSpan(
                    text: "Don't have an account? ",
                  ),
                  TextSpan(
                    text: "Register",
                    style: TextStyle(
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
