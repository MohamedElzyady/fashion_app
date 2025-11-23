import 'package:fashion_app/core/colors.dart';
import 'package:fashion_app/compants/custom_appbar.dart';
import 'package:fashion_app/model/cover_model.dart';
import 'package:fashion_app/model/product_model.dart';
import 'package:fashion_app/screens/products_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppClolrs.primary,
      appBar: CustomAppbar(isBlackk: true),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            right: 0,
            left: 0,
            child: SvgPicture.asset("assets/texts/10.svg"),
          ),
          Positioned(
            top: 40,
            right: 0,
            left: 0,
            child: SvgPicture.asset("assets/texts/October.svg"),
          ),
          Positioned(
            top: 85,
            right: 0,
            left: 0,
            child: SvgPicture.asset("assets/texts/Collection.svg"),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Gap(120),
                  Image.asset("assets/cover/cover1.png"),
                  Gap(20),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: ProductModel.items.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 10,
                      // ده اهم حاجه الي بيظبط ابعاد الصوره من غير ماتدي طول وعرض
                      childAspectRatio: 0.54,
                    ),
                    itemBuilder: (context, index) {
                      final prodeuct = ProductModel.items[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductsDetails(
                                image: prodeuct.image,
                                name: prodeuct.name,
                                price: prodeuct.price,
                                supTtile: prodeuct.descrption,
                              ),
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(prodeuct.image),
                            Gap(10),
                            Text(
                              prodeuct.name,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontFamily: "hamoFont",
                              ),
                            ),
                            Text(
                              prodeuct.descrption,
                              style: TextStyle(
                                fontSize: 12,

                                color: Colors.grey,
                                fontFamily: "hamoFont",
                              ),
                            ),
                            Gap(9),

                            Text(
                             "\$ ${prodeuct.price}",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFFDD8560),
                                fontFamily: "hamoFont",
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Gap(20),
                  Text(
                    "You may also like".toUpperCase(),
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: "hamoFont",
                    ),
                  ),
                  Gap(10),
                  Image.asset("assets/svgs/line.png", width: 124.96, height: 9),
                  Gap(15),
                  SizedBox(
                    height: 450,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: CoverModel.covers.length,
                      itemBuilder: (context, index) {
                        final items = CoverModel.covers[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                items.imge,
                                height: 350,
                                fit: BoxFit.cover,
                              ),
                              Gap(10),
                              Text(
                                items.title.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontFamily: "hamoFont",
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
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
                        Image.asset(
                          "assets/svgs/line.png",
                          width: 124.96,
                          height: 9,
                        ),
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
                        Image.asset(
                          "assets/svgs/line.png",
                          width: 124.96,
                          height: 9,
                        ),
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
