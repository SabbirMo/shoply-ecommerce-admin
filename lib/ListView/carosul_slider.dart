import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarosulSlider extends StatefulWidget {
  const CarosulSlider({super.key});

  @override
  State<CarosulSlider> createState() => _CarosulSliderState();
}

class _CarosulSliderState extends State<CarosulSlider> {

    List<String> imageList = [
      'assets/photo1.jpg',
      'assets/photo2.jpg',
      'assets/photo3.jpg',
      'assets/photo5.jpg',
      'assets/photo6.jpg',
    ];

    int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 230,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            itemCount: imageList.length,
            padEnds: false,
            pageSnapping: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemBuilder: (context, index){
              return Image.asset(imageList[index], fit: BoxFit.cover,);
            },
          )
        ),
        const SizedBox(height: 8,),
         AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: imageList.length,
          effect: const WormEffect(
            dotHeight: 10,
            dotWidth: 10,
          ),
        ),
      ],
    );
  }
}