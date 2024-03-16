import 'package:flutter/material.dart';

class OrderDetailsList extends StatefulWidget {
  const OrderDetailsList({super.key});

  @override
  State<OrderDetailsList> createState() => _OrderDetailsListState();
}

class _OrderDetailsListState extends State<OrderDetailsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Details",
        style: TextStyle(
          fontSize: 22,
          color: Colors.black
        ),
        ),
        elevation: 0.5,
        backgroundColor:const Color.fromARGB(255, 255, 255, 255),
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SizedBox(
              width: 108,
              child: TextButton(
                style: TextButton.styleFrom(
                  side: const BorderSide(width: 2, color: Colors.blue)
                ),
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.help_center_outlined, size: 28,),
                    Text("Help",
                    style: TextStyle(
                      fontSize: 19
                    ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                height: 55,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 244, 242, 242)
                ),
                
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("ORDER ID: 121274541",
                      style: TextStyle(
                        fontSize: 15
                      ),
                      ),
                     SizedBox(
                      width: 82,
                      height: 50,
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.copy, color: Colors.grey[700],),
                            const SizedBox(width: 5),
                            Text("Copy",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700]
                            ),
                            ),
                          ],
                        ),
                      ),
                     )
                    ],
                  ),
                ),
                const SizedBox(height: 8),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 254, 254, 254),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                    ),
                  ]
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Order Recevied",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                    ),
                    ),
                    Text("21th March 2024",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}