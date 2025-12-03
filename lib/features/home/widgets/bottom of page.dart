import 'package:fashion_app/features/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';

class Bottomofpage extends StatelessWidget {
  const Bottomofpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Ionicons.logo_twitter, color: Colors.white),
              Gap(15),

              Icon(Ionicons.logo_instagram, color: Colors.white),
              Gap(15),

              Icon(Ionicons.logo_facebook, color: Colors.white),
            ],
          ),
          Gap(20),
          Image.asset("assets/svgs/line.png", width: 124.96, height: 9),
          Gap(20),
          Text(
            "support@openui.design\n       +60 825 876\n08:00 - 22:00 - Everyday ",
            style: TextStyle(
              height: 2.5,
              color: Colors.white,
              fontFamily: "hamoFont",
            ),
          ),
          Gap(20),
          Image.asset("assets/svgs/line.png", width: 124.96, height: 9),
          Gap(20),
          Text(
            " About         Contect          Blog",
            style: TextStyle(
              height: 1.7,
              color: Colors.white,
              fontFamily: "hamoFont",
            ),
          ),
          Gap(40),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(color: AppClolrs.primary),
            child: Text(
              "          Copyright© Mohamed Rights Reserved.",
              style: TextStyle(
                // height: 1.7,
                color: Colors.white,
                fontFamily: "hamoFont",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
