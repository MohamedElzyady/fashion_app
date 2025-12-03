import 'package:fashion_app/features/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final bool isBlackk;
  const CustomAppbar({super.key, required this.isBlackk});
  @override
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    bool isBlack = isBlackk;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isBlack ? AppClolrs.primary : Colors.white,
        leadingWidth: 25,

        leading: SvgPicture.asset(
          "assets/svgs/Menu.svg",
          color: isBlack ? Colors.white : AppClolrs.primary,
        ),
        title: SvgPicture.asset(
          "assets/logo/logo-bg.svg",
          color: isBlack ? Colors.white : AppClolrs.primary,
        ),
        centerTitle: true,
        actions: [
          SvgPicture.asset(
            "assets/svgs/Search.svg",
            color: isBlack ? Colors.white : AppClolrs.primary,
          ),
          Gap(15),
          SvgPicture.asset(
            "assets/svgs/shopping bag.svg",
            color: isBlack ? Colors.white : AppClolrs.primary,
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
