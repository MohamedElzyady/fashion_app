import 'package:fashion_app/features/compants/cart_details.dart';
import 'package:fashion_app/features/compants/custom_appbar.dart';
import 'package:fashion_app/features/compants/custom_buttom.dart';
import 'package:fashion_app/features/compants/custom_dilog.dart';
import 'package:fashion_app/features/compants/header.dart';
import 'package:fashion_app/features/core/colors.dart';
import 'package:fashion_app/screens/add_adrees.dart';
import 'package:fashion_app/features/home/home.dart';
import 'package:fashion_app/features/payment/payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class PlaceOrder extends StatefulWidget {
  PlaceOrder({
    super.key,
    required this.image,

    required this.name,
    required this.supTtile,

    required this.total,
    required this.qty,
    required this.price,
  });
  final String image;
  final String name;
  final String supTtile;
  final int qty;
  final int total;
  final int price;

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  dynamic _savedAddres;
  dynamic _cardPayment;

  void _openAddress(context) async {
    final addresData = await Navigator.push(
      context,
      MaterialPageRoute(builder: (c) => AddAddress()),
    );

    // ignore: unnecessary_null_comparison
    if (AddAddress != null) {
      setState(() {
        _savedAddres = addresData;
      });
    }
  }

  void _addCard() async {
    final cardData = await Navigator.push(
      context,
      MaterialPageRoute(builder: (c) => Payment()),
    );

    if (cardData != null) {
      setState(() {
        _cardPayment = cardData;
      });
    }
  }

  // ignore: unused_element
  void _editData() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (c) => AddAddress(editData: _savedAddres)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(isBlackk: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20),
            Header(title: "Checkout".toUpperCase()),
            _cardPayment != null
                ? SizedBox.shrink()
                : Text(
                    "Shipping adress".toUpperCase(),
                    style: TextStyle(
                      color: Color(0xFF888888),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
            Gap(10),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _savedAddres != null
                    ? Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${_savedAddres['first']} ${_savedAddres['last']} "
                                      .toUpperCase(),
                                  style: TextStyle(
                                    color: AppClolrs.primary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "${_savedAddres['address']}",
                                  style: TextStyle(
                                    color: Color(0xFF555555),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "${_savedAddres['city']}",
                                  style: TextStyle(
                                    color: Color(0xFF555555),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "${_savedAddres['phone']}",
                                  style: TextStyle(
                                    color: Color(0xFF555555),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color.fromARGB(151, 51, 51, 51),
                            size: 20,
                          ),
                          Gap(15),
                        ],
                      )
                    : SizedBox.shrink(),
                _cardPayment != null ? SizedBox.shrink() : Gap(15),
                _cardPayment != null
                    ? SizedBox.shrink()
                    : Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 14,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey.shade200,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            _openAddress(context);
                          },
                          child: Row(
                            children: [
                              Text(
                                "Add shipping adress",
                                style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.add,
                                color: Color.fromARGB(151, 51, 51, 51),
                              ),
                            ],
                          ),
                        ),
                      ),
                _cardPayment != null ? SizedBox.shrink() : Gap(50),
                _cardPayment != null
                    ? SizedBox.shrink()
                    : Text(
                        "Shipping Method".toUpperCase(),
                        style: TextStyle(
                          color: Color(0xFF888888),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                Gap(10),
                _cardPayment != null
                    ? SizedBox.shrink()
                    : Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 14,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey.shade200,
                        ),
                        child: _cardPayment != null
                            ? SizedBox.shrink()
                            : Row(
                                children: [
                                  Text(
                                    "Pickup at store",
                                    style: TextStyle(
                                      color: Color(0xFF555555),
                                      fontSize: 14,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "FREE",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 104, 102, 102),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Gap(5),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Color.fromARGB(151, 51, 51, 51),
                                  ),
                                ],
                              ),
                      ),
                Gap(30),
                _cardPayment != null
                    ? SizedBox.shrink()
                    : Text(
                        "Payment method".toUpperCase(),
                        style: TextStyle(
                          color: Color(0xFF888888),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                Gap(20),

                _cardPayment != null
                    ? Column(
                        children: [
                          Divider(color: Colors.grey.shade300),
                          Gap(20),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svgs/Mastercard.svg",
                                width: 40,
                              ),
                              Gap(10),
                              Text("Master Card ending.."),

                              Gap(10),
                              Text(
                                "••••${_cardPayment['number'].toString().substring(_cardPayment['number'].length - 2)}",
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color.fromARGB(151, 51, 51, 51),
                                size: 20,
                              ),
                              Gap(20),
                            ],
                          ),
                          Gap(20),
                          Divider(color: Colors.grey.shade300),
                          Gap(20),
                        ],
                      )
                    : GestureDetector(
                        onTap: _addCard,
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.grey.shade200,
                          ),

                          child: Row(
                            children: [
                              Text(
                                "select payment method",
                                style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Color.fromARGB(151, 51, 51, 51),
                              ),
                            ],
                          ),
                        ),
                      ),
              ],
            ),
            Gap(20),
            _cardPayment != null && _savedAddres != null
                ? CartDetails(
                    image: widget.image,
                    name: widget.name,
                    price: widget.price,
                    supTtile: widget.supTtile,
                    onChanged: (qty) {},
                  )
                : SizedBox.shrink(),
            Spacer(),
            Row(
              children: [
                Text("Total", style: TextStyle(letterSpacing: 3)),
                Spacer(),
                Text(
                  "\$ ${widget.total} ",
                  style: TextStyle(color: Color(0xFFDD8560), fontSize: 16),
                ),
              ],
            ),
            Gap(30),
            CustomButtom(
              title: "Place order".toUpperCase(),
              svgIs: true,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      title: Center(
                        child: Text(
                          "Payment success",
                          style: TextStyle(fontFamily: "hamoFont"),
                        ),
                      ),
                      content: CustomDilog(),
                    );
                  },
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
