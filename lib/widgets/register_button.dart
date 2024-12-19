import 'package:flutter/material.dart';
import 'package:w2_slicing_ui/pages/login_page.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 20),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF00623B),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: const Text(
            'Register',
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
