

import 'package:flutter/material.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  final _key = GlobalKey<FormState>();
  final _password = TextEditingController();
  final _confirmPass = TextEditingController();

  bool passShow = true;
  bool confrimPassShow = true;

  void _messageBottomSheet(){
      showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25)
          )
        ),
        context: context, 
        builder: (context){
          return Container(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.check_circle_outline_outlined, 
                size: 140,
                color:Color.fromARGB(255, 22, 79, 236),
                ),
                Text("Password update Succesful!", 
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w500
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 22, 79, 236),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Future.delayed(Duration.zero, () {
                        _password.clear();
                        _confirmPass.clear();
                      });
                    },
                    child:const Center(
                      child: Text("Done", 
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 35, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Create New Password",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w500
              ),
              ),
              const SizedBox(height: 30),
              Form(
                key: _key,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if(value !.isEmpty){
                          return "Enter the Password";
                        }
                        if(value.length<6){
                          return "Minimum six digit";
                        }
                        return null;
                      },
                      controller: _password,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.grey)
                        ),
                        hintText: "New Password",
                        prefixIcon: const Icon(Icons.lock_open_outlined),
                        prefixIconColor: Colors.black,
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              passShow =! passShow;
                            });
                          },
                          child: passShow
                          ?const Icon(Icons.visibility_outlined) 
                          :const Icon(Icons.visibility_off_outlined)
                          ),
                        suffixIconColor: Colors.black,
                      ),
                      obscureText: passShow,
                    ),
                    const SizedBox(height: 25),
                    //Confrim password
                    TextFormField(
                      validator: (value) {
                        if(value !.isEmpty){
                          return "Enter the Password";
                        }
                        if(value != _password.value.text){
                          return "No Match Password";
                        }
                        return null;
                      },
                      controller: _confirmPass,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.grey)
                        ),
                        hintText: "Confirm New Password",
                        prefixIcon: const Icon(Icons.lock_open_outlined),
                        prefixIconColor: Colors.black,
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              confrimPassShow =! confrimPassShow;
                            });
                          },
                          child: confrimPassShow
                          ?const Icon(Icons.visibility_outlined) 
                          :const Icon(Icons.visibility_off_outlined)
                          ),
                        suffixIconColor: Colors.black,
                      ),
                      obscureText: confrimPassShow,
                    ),
                    const SizedBox(height: 35),
                    //Button
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 22, 79, 236),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )
                        ),
                        onPressed: () {
                          String newPass = _password.text;
                          String confirmPass = _confirmPass.text;
                          if(_key.currentState!.validate()){
                            _messageBottomSheet();
                            print("New Password: $newPass \nConfirm Password: $confirmPass");
                          }
                        },
                        child: const Text("Update Password",
                        style: TextStyle(
                          fontSize: 18,
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
  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          passShow = ! passShow;
        });
      }, 
      icon: passShow 
      ? const Icon(Icons.visibility_rounded) 
      : const Icon(Icons.visibility_off_rounded),
    );
  }
}