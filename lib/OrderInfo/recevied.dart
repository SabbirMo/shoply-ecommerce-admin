import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderRecevied extends StatelessWidget {
  final IconData icons;
  VoidCallback onPressed;
  final String text;
  final String dateText;

  OrderRecevied({
    super.key,
    required this.icons,
    required this.onPressed,
    required this.text,
    required this.dateText
    });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icons,
        size: 35,
        color: const Color.fromARGB(255, 105, 243, 46),
        ),
        SizedBox(
          width: 340,
          height: 65,
          child: TextButton(
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black
                    ),
                    ),
                    Text(dateText,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black
                    ),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_right, size: 40, color: Colors.black,)
              ],
            ),
          ),
        )
      ],
    );
  }
}