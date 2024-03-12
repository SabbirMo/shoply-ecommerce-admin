import 'package:ecommerceapp/component/createpassword.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final fromkey = GlobalKey<FormState>();
  final _uemail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 35, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Forgot Password",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w500
              ),
              ),
              const SizedBox(height: 15),
              const Text("Enter your email id for the verification process, We will send 4 digit code to your email",
              style: TextStyle(
                fontSize: 16.5,
                color: Colors.black,
                height: 1.5
              ),
              ),
              const SizedBox(height: 35),
              Form(
                key: fromkey,
                child: TextFormField(
                  validator: (value) {
                    if(value !.isEmpty){
                      return "Please enter your mail";
                    }
                    return null;
                  },
                  controller: _uemail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.grey)
                    ),
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.email_outlined),
                    prefixIconColor: Colors.black
                  ),
                ),
              ),
              const SizedBox(height: 45),
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
                      
                    if(fromkey.currentState!.validate()){
                      final message = SnackBar(
                      content: const Row(
                        children: [
                          Icon(Icons.check_circle_rounded,
                          color: Colors.white,
                          ),
                          SizedBox(width: 8),
                        Text("Verification mail has been Sent!",
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(8),
                    behavior: SnackBarBehavior.floating,
                    duration: const Duration(seconds: 2),
                    action: SnackBarAction(
                      textColor: Colors.white,
                      label: 'Undo',
                      onPressed: (){},
                    ),
                   );
                   ScaffoldMessenger.of(context).showSnackBar(message);
                   Future.delayed(const Duration(seconds: 2), () {
                        setState(() {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const CreateNewPassword()),
                          );
                        });
                      });
                    } 
                  }, 
                  child: const Text("Continue",
                  style: TextStyle(
                    fontSize: 18
                  ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}