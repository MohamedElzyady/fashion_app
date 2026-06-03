import 'package:fashion_app/features/compants/cart_details.dart';
import 'package:fashion_app/features/compants/custom_appbar.dart';
import 'package:fashion_app/features/compants/custom_buttom.dart';
import 'package:fashion_app/features/compants/header.dart';
import 'package:fashion_app/features/core/colors.dart';
// ignore: unused_import
import 'package:fashion_app/features/model/product_model.dart';
import 'package:fashion_app/screens/place_order.dart';
import 'package:fashion_app/features/checkout/cubit/checkout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ProductsDetails extends StatefulWidget {
  final String image;
  final String name;
  final int price;
  final String supTtile;
  ProductsDetails({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.supTtile,
  });

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  @override
  void initState() {
    super.initState();
    context.read<CheckoutCubit>().resetCheckout();
  }

  @override
  Widget build(BuildContext context) {
    final checkoutState = context.watch<CheckoutCubit>().state;
    final selctedQun = checkoutState.quantity;

    return Scaffold(
      appBar: CustomAppbar(isBlackk: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Header(title: 'Checkout'),
            CartDetails(
              image: widget.image,
              name: widget.name,
              supTtile: widget.supTtile,
              price: widget.price,
              initialQty: selctedQun,
              onChanged: (v) {
                context.read<CheckoutCubit>().updateQuantity(v);
              },
            ),
            Gap(20),
            Divider(),
            Gap(20),

            Row(
              children: [
                SvgPicture.asset("assets/svgs/promo.svg", width: 24),
                Gap(10),

                Text(
                  "Add promo code",
                  style: TextStyle(
                    color: AppClolrs.primary,
                    fontSize: 14,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
            Gap(20),
            Divider(),
            Gap(20),

            Row(
              children: [
                SvgPicture.asset("assets/svgs/delivery.svg", width: 24),
                Gap(10),

                Text(
                  "Delivery",
                  style: TextStyle(color: AppClolrs.primary, fontSize: 14),
                ),
                Spacer(),
                Text(
                  "Free",
                  style: TextStyle(color: AppClolrs.primary, fontSize: 14),
                ),
              ],
            ),
            Gap(10),
            Divider(),
            Spacer(),
            Row(
              children: [
                Text("Est. Total", style: TextStyle(letterSpacing: 3)),
                Spacer(),
                Text(
                  "\$ ${widget.price * selctedQun} ",
                  style: TextStyle(color: Color(0xFFDD8560), fontSize: 16),
                ),
              ],
            ),
            Gap(50),
            CustomButtom(
              title: "Checkout".toUpperCase(),
              svgIs: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlaceOrder(
                      image: widget.image,
                      name: widget.name,
                      supTtile: widget.supTtile,
                      price: widget.price,
                    ),
                  ),
                );
              },
            ),
            Gap(50),
          ],
        ),
      ),
    );
  }
}

