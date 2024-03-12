import 'package:flutter/material.dart';

class GridViewButton extends StatelessWidget {
  final String text;
  final String buttonText;

  const GridViewButton({
    super.key,
    required this.text,
    required this.buttonText
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
              text, 
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  )
                ),
                onPressed: () {},
                child: Text(buttonText),
              )
            ],
          ),
        ],
      )
    );
  }
}