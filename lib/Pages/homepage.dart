
import 'package:ecommerceapp/GridView/gridviewlist.dart';
import 'package:ecommerceapp/GridView/gridviewbutton.dart';
import 'package:ecommerceapp/HotSelling/hotselling.dart';
import 'package:ecommerceapp/ListView/carosul_slider.dart';
import 'package:ecommerceapp/ListView/listview.dart';
import 'package:ecommerceapp/Recommend/recommend.dart';
import 'package:ecommerceapp/Sidebar/sidenavbar.dart';
import 'package:ecommerceapp/Time/timelist.dart';
import 'package:ecommerceapp/ViewAll/viewallbutton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 182, 182),
        elevation: 0,
        title: const Text(
          "Home",
          style: TextStyle(
              color: Colors.black, fontSize: 27, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.black,
              size: 33,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 33,
            ),
          ),
        ],
        // leading: IconButton(
        //   onPressed: (){
        //     setState(() {
        //       SideNavbar();
        //     });
        //   },
        //   icon: Icon(Icons.menu, size: 32, color: Colors.black,),
        // )
      ),
      drawer: const SideNavbar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: const Icon(Icons.search_outlined, size: 32),
                      hintText: "Search Anything..."),
                ),
              ),
              const ViewAll(viewList: "Categories"),
              const HorizontalListView(),
              const SizedBox(height: 12),
              const CarosulSlider(),
              const ViewAll(viewList: "Deal of the day"),
              const TimeList(),
              const SizedBox(height: 8),
              const HomeGridView(
                leftImage: "assets/photo5.jpg",
                rightImage: "assets/photo4.jpg",
              ),
              // const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GridViewButton(
                    text: 'Running Shoes',
                    buttonText: 'Upto 40% OFF ',
                  ),
                  GridViewButton(
                    text: 'Sneakers',
                    buttonText: '40-60% OFF',
                  )
                ],
              ),
              const SizedBox(height: 8),
              const HomeGridView(
                leftImage: "assets/photo7.jpg",
                rightImage: "assets/photo8.jpg",
              ),
              // const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GridViewButton(
                    text: 'Wrist Watches',
                    buttonText: 'Upto 40% OFF ',
                  ),
                  GridViewButton(
                    text: 'Bluetooth Speaker',
                    buttonText: '40-60% OFF',
                  )
                ],
              ),
              const ViewAll(viewList: "Hot Selling Footwear"),
              const HotSelling(),
              const ViewAll(viewList: "Recommend for you"),
              const RecommendList(),
            ],
          ),
        ],
      ),
    );
  }
}
