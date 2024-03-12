import 'package:ecommerceapp/Button/editprofile.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  int genderSelect = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile",
        style: TextStyle(
          color: Colors.black,
          fontSize: 24
        ),
        ),
        elevation: 0.5,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 135,
              child: TextButton(
                style: TextButton.styleFrom(
                  side: const BorderSide(color: Colors.blue, width: 2),
                  shadowColor: null
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EditProfile())
                    );
                  });
                }, 
                child: const Text("Edit Profile",
                style: TextStyle(
                  fontSize: 18
                ),
                ),
              ),
            ),
          )
        ],
        leading: const Icon(
          Icons.menu_sharp,
          color: Colors.black,
          size: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            children: [
              const Center(
                child: CircleAvatar(
                backgroundImage: AssetImage("assets/pixel.jpg"),
                radius: 40,
               ),
              ),
              const SizedBox(height: 35),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        hintText: "Name"
                      ),
                    ),
                    const SizedBox(height: 18),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        hintText: "Email"
                      ),
                    ),
                    const SizedBox(height: 18),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        hintText: "Mobile Number"
                      ),
                    ),
                    const SizedBox(height: 18),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        hintText: "Location"
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text("Gender",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                     ),
                    ),
                    Row(
                      children: [
                       Radio(
                        value: 1, 
                        groupValue: genderSelect, 
                        onChanged: (value) {
                          setState(() {
                            genderSelect = value!;
                          });
                         },
                        ),
                        const Text("Male",
                        style: TextStyle(
                          fontSize: 18,
                         ),
                        ),
                       Radio(
                        value: 2, 
                        groupValue: genderSelect, 
                        onChanged: (value) {
                          setState(() {
                            genderSelect = value!;
                          });
                         },
                        ),
                        const Text("Female",
                        style: TextStyle(
                          fontSize: 18,
                         ),
                        ),
                        Radio(
                          value: 3, 
                          groupValue: genderSelect, 
                          onChanged: (value){
                            setState(() {
                              genderSelect = value!;
                            });
                          },
                        ),
                        const Text(
                          "Others",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
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