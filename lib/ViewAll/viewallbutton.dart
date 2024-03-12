import 'package:flutter/material.dart';

class ViewAll extends StatelessWidget {
  
  final String viewList;
  
  const ViewAll({
    super.key,
    required this.viewList
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Text(
            viewList,
             style: const TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.w600,
             ),
             ),
            TextButton(
              onPressed: () {},
              child: const Row(
               children: [
                 Text(
                    "View All",
                    style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 105, 104, 104),
                  ),
                 ),
                 Icon(
                 Icons.arrow_right_alt,
                 size: 25,
                 color: Color.fromARGB(255, 105, 104, 104),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}