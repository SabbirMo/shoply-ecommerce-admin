import 'package:flutter/material.dart';

class TimeList extends StatelessWidget {
  const TimeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 250,
            height: 45,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 247, 69, 56),
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Center(
                child: Text(
              "11   HRS   15   MIN   04   SEC",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            )),
          ),
        ],
      ),
    );
  }
}
