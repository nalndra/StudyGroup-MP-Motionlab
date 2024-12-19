import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:w2_slicing_ui/pages/login_page.dart';
import 'package:w2_slicing_ui/widgets/register_button.dart';

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
                fontSize: 23,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.oswald().fontFamily,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              "Create your account for Happy Shopping",
              style: TextStyle(
                fontSize: 17,
                fontFamily: GoogleFonts.lato().fontFamily,
                color: const Color(0XFF707070),
              ),
            ),
            const SizedBox(height: 23),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Full Name",
                  hintStyle: const TextStyle(color: Color(0xFF868A91)),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Color(0xFF868A91),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xFF3A5A40),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xFF3A5A40),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Email",
                  hintStyle: const TextStyle(color: Color(0xFF868A91)),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color(0xFF868A91),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xFF3A5A40),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xFF3A5A40),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Password",
                  hintStyle: const TextStyle(color: Color(0xFF868A91)),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xFF868A91),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xFF3A5A40),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xFF3A5A40),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Confirm Password",
                  hintStyle: const TextStyle(color: Color(0xFF868A91)),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xFF868A91),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xFF3A5A40),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xFF3A5A40),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
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
