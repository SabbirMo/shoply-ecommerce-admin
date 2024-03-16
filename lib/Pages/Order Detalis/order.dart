import 'package:flutter/material.dart';
import 'package:ecommerceapp/Pages/Order Detalis/orderdetails.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Orders",
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
          ),
        ),
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {}, 
          icon: const Icon(Icons.menu, size: 28, color: Colors.black,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Stack(
              children: [
                Image(
                  image: AssetImage("assets/orderbox.png"),
                  width: 320,
                ),
                Positioned(
                  top: 40,
                  left: 250,
                  child: Icon(
                    Icons.punch_clock,
                    size: 65,
                    color: Color.fromARGB(255, 213, 213, 213),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "No Order Found!",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 30),
            const Text(
                "Currently you do not have any order. When you order something. It will appear here",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 53,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor:const Color.fromARGB(255, 20, 67, 237),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const OrderDetails()) 
                    );
                  });
                }, 
                child: const Text("Start Shopping",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
