import 'package:flutter/material.dart';

class SellingFootWear extends StatefulWidget {
  final String hotSelImage;

  const SellingFootWear({
    super.key,
    required this.hotSelImage
    });

  @override
  State<SellingFootWear> createState() => _SellingFootWearState();
}

class _SellingFootWearState extends State<SellingFootWear> {
  bool isReaction = true;
  bool isRating = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            height: 168,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(widget.hotSelImage),
                  fit: BoxFit.cover,
                )),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(253, 188, 79, 7),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Text(
                        "Top Selling",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 252, 205, 205),
                        borderRadius: BorderRadius.circular(25)),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          isReaction = !isReaction;
                        });
                      },
                      icon: isReaction
                          ? const Icon(Icons.favorite_border_outlined)
                          : const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 7),
            child: Text("Adidas White sneakers for men",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              height: 1.3
             ),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Row(
              children: [
                Text("\$68",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(width: 5),
                Text("\$136",
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.lineThrough
                  ),
                ),
                SizedBox(width: 22),
                Text("50% OFF",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 161, 66, 10),
                  fontWeight: FontWeight.w500
                 ),
                )
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    isRating =! isRating;
                  });
                }, 
                icon: isRating 
                ? const Icon(Icons.star_border_outlined, size: 30)
                : const Icon(Icons.star, color: Colors.red, size: 30),
              ),
              const Text("4.8", 
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w500
                ),
              ),
              const SizedBox(width: 8),
              const Text("(692)", 
              style: TextStyle(
                fontSize: 20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
