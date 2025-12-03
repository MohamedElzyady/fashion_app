import 'package:fashion_app/features/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CartDetails extends StatefulWidget {
  final String image;
  final String name;
  final int price;
  final String supTtile;
  const CartDetails({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.supTtile,
    required this.onChanged,
  });
  final Function(int) onChanged;

  @override
  State<CartDetails> createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(widget.image, width: 100, height: 134),
        Gap(9),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.name.toUpperCase(),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                wordSpacing: 5,
              ),
            ),
            Gap(5),
            Text(
              widget.supTtile.toUpperCase(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF555555),
              ),
            ),
            Gap(15),
            Row(
              children: [
                Buttom(() {
                  setState(() {
                    if (num == 1) {
                      num = 1;
                    } else {
                      num--;
                      widget.onChanged(num);
                    }
                  });
                }, 'assets/svgs/min.svg'),
                Gap(10),
                Text(num.toString()),
                Gap(10),
                Buttom(() {
                  setState(() {
                    num++;
                    widget.onChanged(num);
                  });
                }, 'assets/svgs/plus.svg'),
              ],
            ),
            Gap(10),
            Text(
              widget.price.toString(),
              style: TextStyle(
                color: Color(0xFFDD8560),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Widget Buttom(onTap, Text) {
  return Container(
    padding: EdgeInsets.all(2),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: Colors.grey.shade400),
    ),
    child: GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(Text, color: AppClolrs.primary),
    ),
  );
}
