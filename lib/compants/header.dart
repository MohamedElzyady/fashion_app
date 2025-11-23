import 'package:fashion_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Header extends StatelessWidget {
  Header({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(10),
        Center(
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              letterSpacing: 5,
              color: AppClolrs.primary,
            ),
          ),
        ),
        Image.asset(
          "assets/svgs/line.png",
          width: 124.96,
          height: 9,
          color: AppClolrs.primary,
        ),
        Gap(30),
      ],
    );
  }
}
