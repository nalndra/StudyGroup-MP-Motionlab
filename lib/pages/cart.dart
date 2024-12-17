import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w2_slicing_ui/controller/cart_controller.dart';
import 'package:w2_slicing_ui/pages/addToCart.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class cartPage extends StatelessWidget {
  const cartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());

    double screenWidth = MediaQuery.of(context).size.width;

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
          "My Cart",
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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 15, left: 20, right: 20),
                      padding: const EdgeInsets.all(10),
                      width: screenWidth - 40,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: Image.asset(
                              'assets/images/miBand8.png',
                              width: 95,
                              height: 95,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mi Band 8 Pro - Brand New',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '\$54.99',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                child: IconButton(
                                  icon: const Icon(Icons.remove),
                                  onPressed: cartController.quantityDecrement,
                                ),
                              ),
                              Obx(() =>
                                  Text('${cartController.quantity.value}')),
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: cartController.quantityIncrement,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 15, left: 20, right: 20),
                      padding: const EdgeInsets.all(10),
                      width: screenWidth - 30,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: Image.asset(
                              'assets/images/lycraMen.png',
                              width: 95,
                              height: 95,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lycra Men's Shirt",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '\$12.00',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: cartController.quantityDecrement,
                              ),
                              Obx(() =>
                                  Text('${cartController.quantity.value}')),
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: cartController.quantityIncrement,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: cartAdd(),
            ),
          ],
        ),
      ),
    );
  }
}
