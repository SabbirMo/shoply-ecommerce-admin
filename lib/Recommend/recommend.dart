import 'package:ecommerceapp/HotSelling/sellingfootwear.dart';
import 'package:flutter/material.dart';

class RecommendList extends StatelessWidget {
  const RecommendList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 325,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: const [
            SellingFootWear(
              hotSelImage: "assets/photo6.jpg",
            ),
            SellingFootWear(
              hotSelImage: "assets/photo7.jpg",
            ),
            SellingFootWear(
              hotSelImage: "assets/photo8.jpg",
            ),
          ],
        ),
      ),
    );
  }
}