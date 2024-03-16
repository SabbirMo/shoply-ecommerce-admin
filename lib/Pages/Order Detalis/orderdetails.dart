import 'package:ecommerceapp/OrderInfo/detalis.dart';
import 'package:ecommerceapp/OrderInfo/recevied.dart';
import 'package:ecommerceapp/OrderInfo/receviedshirt.dart';
import 'package:ecommerceapp/OrderInfo/twobutton.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Orders",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        elevation: 0.5,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 110,
              child: TextButton(
                style: TextButton.styleFrom(
                    side: const BorderSide(width: 2, color: Colors.blue),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(
                      Icons.list,
                      size: 28,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Filter",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(Icons.search_outlined,
                        size: 36, color: Colors.black),
                    hintText: "Search order"),
                cursorColor: Colors.black,
              ),
              const SizedBox(height: 7),
              OrderRecevied(
                icons: Icons.check_circle,
                text: "Order Recevied",
                dateText: "21th March 2024",
                onPressed: () {
                  setState(() {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const OrderDetailsList()),
                    );
                  });
                },
              ),
              const SizedBox(height: 20),
              const OrderReceviedShirt(
                image: "assets/shart1.jpg",
                text: "Allen Solly Regular fit cotton\nShirt",
                sizeText: "Size: L",
                colorText: "Color: White",
              ),
              const SizedBox(height: 28),
              const CancelTrackButton(
                cancelButton: "Cancel",
                trackButton: "Track",
              ),
              const SizedBox(height: 30),
              OrderRecevied(
                icons: Icons.check_box_sharp,
                text: "Order Cancelled",
                dateText: "5th Feb 2024",
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              const OrderReceviedShirt(
                image: "assets/shart2.jpg",
                text: "Calvin Clein Regular fit slim fit\nshirt",
                sizeText: "Size: L",
                colorText: "Color: White",
              ),
              const SizedBox(height: 30),
              OrderRecevied(
                icons: Icons.check_circle,
                text: "Order Delivered",
                dateText: "8th Jan 2024",
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              const OrderReceviedShirt(
                image: "assets/pixel.jpg",
                text: "Tommy Hilfiger slim fit semi formal shirt",
                sizeText: "Size: L",
                colorText: "Color: White",
              ),
              const SizedBox(height: 28),
              const CancelTrackButton(
                cancelButton: "Exchange",
                trackButton: "Retrun",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
