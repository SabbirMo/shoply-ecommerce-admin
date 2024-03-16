
import 'package:ecommerceapp/Pages/faqs.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/Pages/profile.dart';

class SideNavbar extends StatefulWidget {
  const SideNavbar({super.key});

  @override
  State<SideNavbar> createState() => _SideNavbarState();
}

class _SideNavbarState extends State<SideNavbar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const Padding(padding: EdgeInsets.zero),
          DrawerHeader(
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/pixel.jpg"),
                  radius: 27,
                ),
                const SizedBox(width: 15),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sabbir Islam",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text("+8801791-739947")
                  ],
                ),
                const SizedBox(width: 25),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const MyProfile())
                    );
                  },
                  icon: const Icon(Icons.arrow_right_rounded, size: 45),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, size: 27),
            title: const Text(
              "Shop by Cetagories",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.lock_clock_outlined, size: 27),
            title: const Text(
              "My Orders",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
            onTap: () {},
          ),
          const ListTile(
            leading: Icon(
              Icons.favorite_outline,
              size: 27,
            ),
            title: Text(
              "Favorite",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
          ),
           ListTile(
            leading: const Icon(
              Icons.message_outlined,
              size: 27,
            ),
            title: const Text(
              "FAQs",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
            onTap: () {
              setState(() {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const FAQSPage())
                );
              });
            },
          ),
          const ListTile(
            leading: Icon(
              Icons.location_on_outlined,
              size: 27,
            ),
            title: Text(
              "Addresses",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.list_alt_outlined,
              size: 27,
            ),
            title: Text(
              "Saved Cards",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.list_alt,
              size: 27,
            ),
            title: Text(
              "Terms & Conditions",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.privacy_tip_outlined,
              size: 27,
            ),
            title: Text(
              "Privacy Policy",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.logout,
              size: 27,
            ),
            title: Text(
              "Logout",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
