import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:w2_slicing_ui/pages/backToHome.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFCFFFE),
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            'assets/images/back_Button.png',
            height: 20,
            width: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Invoice",
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            LottieBuilder.asset(
              'assets/animations/verified.json',
              width: 200,
            ),
            Text(
              "Transaction Success",
              style: TextStyle(
                fontSize: 18,
                color: const Color(0xFF707070),
                fontFamily: GoogleFonts.lato().fontFamily,
              ),
            ),
            const Text(
              "\$54.99",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: 300,
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), 
                ),
                color: Colors.white, 
                elevation: 5, 
                child: const Padding(
                  padding: EdgeInsets.all(16.0), 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Invoice Number",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF707070),
                            ),
                          ),
                          Text(
                            "123456789",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transaction Date",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF707070),
                            ),
                          ),
                          Text(
                            "16 June 2023", 
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payment Method",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF707070),
                            ),
                          ),
                          Text(
                            "Bank Transfer",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Backtohome(),
          ],
        ),
      ),
    );
  }
}
