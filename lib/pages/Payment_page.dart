// ignore: file_names
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            LottieBuilder.asset(
              'assets/animations/verified.json',
              width: 150,
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
              "\$66.00",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Invoice Number',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF868A91),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '000085752257',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 83, 81, 81),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Transaction Date',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF868A91),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '16 June 2023',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 83, 81, 81),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Payment Method',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF868A91),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Bank Transfer',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 83, 81, 81),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Detail Pesanan',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        'Order Name',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF868A91),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Indra Mahesa',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 83, 81, 81),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Order Email',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF868A91),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'indramahesa@gmail.com',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 83, 81, 81),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF868A91),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$66.00',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 83, 81, 81),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Backtohome(),
          ],
        ),
      ),
    );
  }
}
