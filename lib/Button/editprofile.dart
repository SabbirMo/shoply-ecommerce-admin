
import 'dart:typed_data';

import 'package:ecommerceapp/Utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  int genderSelect = 0;
  final _formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final mobile = TextEditingController();
  final location = TextEditingController();

  Uint8List? _image;

  void selectImage() async {
    Uint8List image = await pickImage(ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  messageShow() {
    final message = SnackBar(
      content: const Row(
        children: [
          Icon(Icons.check_circle_rounded, color: Colors.white,),
          SizedBox(width: 8,),
          Text("Change Save Successfully!")
        ],
      ),
      action: SnackBarAction(
        label: "Undo", 
        onPressed: (){},
      ),
      behavior: SnackBarBehavior.floating,
      duration:const Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(message);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile",
        style: TextStyle(
          fontSize: 24,
          color: Colors.black
        ),
        ),
        elevation: 0.5,
        backgroundColor:const Color.fromARGB(255, 245, 162, 162),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            children: [
              Stack(
                children: [
                  _image != null ?
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: MemoryImage(_image!),
                  ):
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/aveter.png"),
                    radius: 40
                  ),
                  Positioned(
                    bottom: -10,
                    left: 45,
                    child: IconButton(
                      onPressed: () {
                        selectImage();
                      },
                      icon: Icon(Icons.add_a_photo)
                    ),
                  ),
                  
                ],
              ),

              const SizedBox(height: 35),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your Name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          hintText: "Name"),
                    ),
                    const SizedBox(height: 18),
                    TextFormField(
                      controller: email,
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Enter your Email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          hintText: "Email"),
                    ),
                    const SizedBox(height: 18),
                    TextFormField(
                      controller: mobile,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your Phone Number";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          hintText: "Mobile Number"),
                    ),
                    const SizedBox(height: 18),
                    TextFormField(
                      controller: location,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your Location";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          hintText: "Location"),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Gender",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                    ),
                   const SizedBox(height: 15),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor:const Color.fromARGB(255, 8, 76, 201),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )
                        ),
                        onPressed: () {

                          if(_formKey.currentState!.validate()){
                            messageShow();
                          }
                        },
                        child: const Text("Save Changes",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          ),
                        ),
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