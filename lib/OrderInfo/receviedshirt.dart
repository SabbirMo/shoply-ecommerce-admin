import 'package:flutter/material.dart';

class OrderReceviedShirt extends StatelessWidget {
  final String image;
  final String text;
  final String sizeText;
  final String colorText;

  const OrderReceviedShirt({
    super.key,
    required this.image,
    required this.text,
    required this.sizeText,
    required this.colorText
    });

  @override
  Widget build(BuildContext context) {
    return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      height: 80,
                      decoration: BoxDecoration(
                        color:const Color.fromARGB(255, 113, 186, 247),
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(image), 
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    
                    Expanded(
                      child: Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(text,
                            style: const TextStyle(
                              fontSize: 17,
                              color: Colors.black
                            ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                            children: [
                              Text(
                                sizeText,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                              ),
                              const SizedBox(width: 10), 
                              Text(colorText,
                              style: const TextStyle(
                                fontSize: 16
                              ),
                              )
                            ],
                           )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
  }
}