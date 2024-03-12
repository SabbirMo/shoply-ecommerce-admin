import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final String imageCaption;
  final String image;

  const CategoriesList({
    super.key,
    required this.imageCaption,
    required this.image
    });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 85,
        child: ListTile(
          title: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 201, 233, 235),
            backgroundImage: AssetImage(image),
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(imageCaption),
            ),
        ),
      ),
    );
  }
}