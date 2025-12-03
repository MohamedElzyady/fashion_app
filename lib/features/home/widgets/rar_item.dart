import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RarItem extends StatelessWidget {
  final String image;
  final String textTitle;
  const RarItem({super.key, required this.image, required this.textTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(image, height: 350, fit: BoxFit.cover),
        Gap(10),
        Text(
          textTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,
            fontFamily: "hamoFont",
          ),
        ),
      ],
    );
  }
}
