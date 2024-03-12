import 'package:flutter/material.dart';

class HomeGridView extends StatelessWidget {
  final String leftImage;
  final String rightImage;

  const HomeGridView({
    super.key,
    required this.leftImage,
    required this.rightImage
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 180,
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 25,
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(image: AssetImage(leftImage), fit: BoxFit.cover),
              ),
              
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(image: AssetImage(rightImage), fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}