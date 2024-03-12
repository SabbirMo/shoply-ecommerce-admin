import 'package:ecommerceapp/HotSelling/sellingfootwear.dart';
import 'package:flutter/material.dart';

class HotSelling extends StatelessWidget {
  const HotSelling({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 295,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: const [
            SellingFootWear(
              hotSelImage: "assets/photo4.jpg",
            ),
            SellingFootWear(
              hotSelImage: "assets/photo5.jpg",
            ),
            SellingFootWear(
              hotSelImage: "assets/photo3.jpg",
            ),
          ],
        ),
      ),
    );
  }
}