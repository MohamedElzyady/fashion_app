import 'package:fashion_app/features/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomDilog extends StatelessWidget {
  const CustomDilog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 334,
      child: Column(
        children: [
          SvgPicture.asset("assets/pop/done.svg"),
          Gap(10),
          Text(
            "Your payment was success",
            style: TextStyle(fontFamily: "hamoFont"),
          ),
          Gap(10),
          Text("Payment ID", style: TextStyle(fontFamily: "hamoFont")),
          Gap(15),
          Image.asset(
            "assets/svgs/line.png",
            width: 124.96,
            height: 9,
            color: AppClolrs.primary,
          ),
          Gap(15),

          Text('Rate your purchase', style: TextStyle(fontFamily: "hamoFont")),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/pop/emogi1.svg"),
              Gap(20),

              SvgPicture.asset("assets/pop/emogi2.svg"),
              Gap(20),

              SvgPicture.asset("assets/pop/emogi3.svg"),
            ],
          ),
          Gap(35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppClolrs.primary,
                    border: Border.all(color: AppClolrs.primary),
                  ),
                  child: Text(
                    "Supmit".toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "hamoFont",
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppClolrs.primary),
                  ),
                  child: Text(
                    "Back to home".toUpperCase(),
                    style: TextStyle(
                      color: AppClolrs.primary,
                      fontFamily: "hamoFont",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
