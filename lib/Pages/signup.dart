import 'package:ecommerceapp/Pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

    final _formKey = GlobalKey<FormState>();
    final _email = TextEditingController();
    final _pass = TextEditingController();
    final _confrimPass = TextEditingController();

    bool isHidePassword = true;
    bool isConfirmPassword = true;

    //Success message
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
                Text("Signup Succesful!", 
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
                        _email.clear();
                        _pass.clear();
                        _confrimPass.clear();
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

  //Login button
  void _showBottomSheet(){
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25)
        )
      ),
      context: context, 
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * .86,
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const  Text("Signup with Email",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22
                  ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    }, 
                    icon:const Icon(Icons.close, size: 30,),
                  )
                ],
              ),
              const SizedBox(height: 25),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _email,
                      validator: (value) {
                        if(value !. isEmpty){
                          return "Please Enter your Email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.grey)
                        ),
                        hintText: "Email",
                        prefixIcon:const Icon(Icons.email_outlined),
                        prefixIconColor: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _pass,
                      validator: (value) {
                        if(value !.isEmpty){
                          return "Please enter your password";
                        }
                        if(value.length<6){
                          return "Minimun six digit";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.grey)
                        ),
                        hintText: "Password",
                        prefixIcon: const Icon(Icons.lock_open_outlined),
                        prefixIconColor: Colors.black,
                         suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isHidePassword = !isHidePassword;
                            });
                          },
                          child: isHidePassword
                          ? const Icon( Icons.visibility_outlined)
                          : const Icon(Icons.visibility_off_outlined),
                        ),
                      ),
                      obscureText: isHidePassword,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _confrimPass,
                      validator: (value) {
                        if(value !.isEmpty){
                          return "Please enter your password";
                        }
                        if(value !=_pass.value.text){
                          return "No Match Password";
                        }
                        if(value.length<6){
                          return "Minimun six digit";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.grey)
                        ),
                        hintText: "Confirm Password",
                        prefixIcon: const Icon(Icons.lock_open_outlined),
                        prefixIconColor: Colors.black,
                         suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isConfirmPassword = !isConfirmPassword;
                            });
                          },
                          child: isConfirmPassword
                          ? const Icon( Icons.visibility_outlined)
                          : const Icon(Icons.visibility_off_outlined),
                        ),
                      ),
                      obscureText: isConfirmPassword,
                    ),
                  ],
                ),
              ),
              
              //Button
              const SizedBox(height: 25),
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
                      String email = _email.text;
                      String pass = _pass.text;
                      String confirm = _confrimPass.text;
                    if( _formKey.currentState!.validate()){
                      _messageBottomSheet();
                    print("Email: $email \nPassword: $pass \nConfirm Password: $confirm");
                    }
                    
                  }, 
                  child: const Center(
                    child: Text("Signup",
                     style: TextStyle(
                      fontSize: 18,
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
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 35, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sugnup to Shoply", 
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 25),
               SizedBox( 
                width: MediaQuery.of(context).size.width,
                height: 55,
                 child: TextButton.icon(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(color: Colors.black, width: 1)
                    )
                  ),
                  onPressed: () {}, 
                  icon: const FaIcon(FontAwesomeIcons.google,
                  size: 28,
                  color: Colors.green,
                  ), 
                  label: const Center(
                    child: Text("Signup With Google",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      wordSpacing: 3.5,
                      fontWeight: FontWeight.normal
                    ),
                    ),
                  ),
                ),
               ),
               const SizedBox(height: 25,),
               SizedBox( 
                width: MediaQuery.of(context).size.width,
                height: 55,
                 child: TextButton.icon(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(color: Colors.black, width: 1)
                    )
                  ),
                  onPressed: () {}, 
                  icon: const FaIcon(FontAwesomeIcons.facebook,
                  size: 28,
                  color: Colors.blue,
                  ), 
                  label: const Center(
                    child: Text("Signup With Facebook",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      wordSpacing: 3.5,
                      fontWeight: FontWeight.normal
                    ),
                    ),
                  ),
                ),
               ),
               const SizedBox(height: 35),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text("OR"),
                  ),
                   Expanded(
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 55,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor:const Color.fromARGB(255, 22, 79, 236),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                  onPressed: _showBottomSheet,
                  child: const Text("Signup With Email",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    wordSpacing: 3.5,
                    fontWeight: FontWeight.normal
                  ),
                  ),
                  ),
                ),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?",
                    style: TextStyle(
                      fontSize: 16
                    ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=> const LoginPage())
                        );
                      }, 
                      child: const Text("Login ",
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.underline
                      ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}