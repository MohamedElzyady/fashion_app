import 'package:fashion_app/features/core/colors.dart';
import 'package:fashion_app/features/compants/custom_appbar.dart';
import 'package:fashion_app/features/home/widgets/bottom%20of%20page.dart';
import 'package:fashion_app/features/home/widgets/product.dart';
import 'package:fashion_app/features/home/widgets/rar_item.dart';
import 'package:fashion_app/features/model/cover_model.dart';
import 'package:fashion_app/features/model/product_model.dart';
import 'package:fashion_app/features/product_details/products_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

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
                        child: Product(
                          image: prodeuct.image,
                          name: prodeuct.name,
                          descrption: prodeuct.descrption,
                          price: '\$ ${prodeuct.price}',
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
                          child: RarItem(
                            image: items.imge,
                            textTitle: items.title.toUpperCase(),
                          ),
                        );
                      },
                    ),
                  ),
                  Bottomofpage(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
