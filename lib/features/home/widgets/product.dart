import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Product extends StatelessWidget {
  final String image;
  final String name;
  final String descrption;
  final String price;
  const Product({super.key, required this.image, required this.name, required this.descrption, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(image),
        Gap(10),
        Text(
          name,
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontFamily: "hamoFont",
          ),
        ),
        Text(
        descrption,
          style: TextStyle(
            fontSize: 12,

            color: Colors.grey,
            fontFamily: "hamoFont",
          ),
        ),
        Gap(9),

        Text(
          price,
          style: TextStyle(
            fontSize: 15,
            color: Color(0xFFDD8560),
            fontFamily: "hamoFont",
          ),
        ),
      ],
    );
  }
}
