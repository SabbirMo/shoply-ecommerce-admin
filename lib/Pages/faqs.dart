import 'package:flutter/material.dart';

class FAQSPage extends StatefulWidget {
  const FAQSPage({super.key});

  @override
  State<FAQSPage> createState() => _FAQSPageState();
}

class _FAQSPageState extends State<FAQSPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FAQs", 
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
           ),
          ),
        elevation: 0.5,
        backgroundColor: Colors.white10,
      ),
    );
  }
}