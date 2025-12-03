import 'package:fashion_app/features/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomButtom extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  CustomButtom({super.key, required this.svgIs, required this.title, required this.onTap});
  final bool svgIs;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    bool isSvg = svgIs;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: AppClolrs.primary),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isSvg
                  ? SvgPicture.asset("assets/svgs/shopping bag.svg")
                  : SizedBox.shrink(),
              Gap(10),
              Text(
                title,
                style: TextStyle(color: Colors.white, letterSpacing: 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
