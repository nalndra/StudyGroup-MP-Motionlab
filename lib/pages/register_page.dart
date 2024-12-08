import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:w2_slicing_ui/pages/login_page.dart';
import 'package:w2_slicing_ui/pages/register_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Register",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Create your account for Happy Shopping",
              style: TextStyle(
                fontSize: 18,
                fontFamily: GoogleFonts.roboto().fontFamily,
                color: const Color(0XFF707070),
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 246, 246, 246),
                  hintText: "Full Name",
                  hintStyle: const TextStyle(color: Color(0xFF868A91)),
                  prefixIcon: const Icon(
                    Icons.person,
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
                    Icons.lock,
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
                  hintText: "Confirm Password",
                  hintStyle: const TextStyle(color: Color(0xFF868A91)),
                  prefixIcon: const Icon(
                    Icons.lock,
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
            const RegisterButton(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    color: Colors.black,
                  ),
                  children: const [
                    TextSpan(
                      text: "Already have an account? ",
                    ),
                    TextSpan(
                      text: "Login",
                      style: TextStyle(
                        color: Colors.green,
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
