import 'package:ecommerceapp/Pages/homepage.dart';
import 'package:ecommerceapp/Pages/profile.dart';
import 'package:flutter/material.dart';

class BottomNavigatorList extends StatefulWidget {
  const BottomNavigatorList({super.key});

  @override
  State<BottomNavigatorList> createState() => _BottomNavigatorListState();
}

class _BottomNavigatorListState extends State<BottomNavigatorList> {
  int countValue = 0;
  final tabs = const [
    HomePage(),
    Text("Student"),
    Text("Account"),
    MyProfile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: tabs.elementAt(countValue),
      ),
       bottomNavigationBar: BottomNavigationBar(
        iconSize: 26,
        selectedItemColor: Colors.blue,
        unselectedItemColor: const Color.fromARGB(255, 75, 73, 73),
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: countValue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp),
            label: 'Cetagories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
          ),
        ],
        onTap: (value) {
          setState(() {
            countValue = value;
          });
        },
      ),
    );
  }
}