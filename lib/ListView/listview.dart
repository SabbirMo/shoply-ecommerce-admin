import 'package:ecommerceapp/ListView/cetagories.dart';
import 'package:flutter/material.dart';

class HorizontalListView extends StatefulWidget {
  const HorizontalListView({super.key});

  @override
  State<HorizontalListView> createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CategoriesList(
            imageCaption: "Fashion",
            image: "assets/t-shirt.png",
          ),
          CategoriesList(
            imageCaption: "Device",
            image: "assets/laptop.png",
          ),
          CategoriesList(
            imageCaption: "Application",
            image: "assets/fride.png",
          ),
          CategoriesList(
            imageCaption: "Beauty",
            image: "assets/beauty.png",
          ),
          CategoriesList(
            imageCaption: "Sabbir",
            image: "assets/pixel.jpg",
          ),
          CategoriesList(
            imageCaption: "Device",
            image: "assets/laptop.png",
          ),
          CategoriesList(
            imageCaption: "Device",
            image: "assets/sabbir.jpg",
          ),
          CategoriesList(
            imageCaption: "Device",
            image: "assets/laptop.png",
          ),
        ],
      ),
    );
  }
}