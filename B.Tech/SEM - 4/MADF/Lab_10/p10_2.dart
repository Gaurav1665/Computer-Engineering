import 'package:flutter/material.dart';

class LoginScreenValidation extends StatefulWidget {
  LoginScreenValidation({super.key});

  @override
  State<LoginScreenValidation> createState() => _LoginScreenValidationState();
}

class _LoginScreenValidationState extends State<LoginScreenValidation> {
  TextEditingController username = TextEditingController();

  TextEditingController password = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Log-in",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 5),
        )),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/illustration/login.png",
                height: 300,
                width: 300,
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: username,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 8),
                  prefix: Icon(Icons.person,),
                  hintText: "Email",
                  border:
                      UnderlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
                validator: (value) {
                  if(value!.isEmpty) return "Enter Your Email Address";
                  else if (!RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+').hasMatch(value)) return "Your Email does not match the patern";
                },
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: password,
                decoration: InputDecoration(
                  prefix: Icon(Icons.lock_clock_rounded),

                  labelText: "Password",
                  border:
                  UnderlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
                validator: (value) {
                  if(value!.isEmpty) return "Enter Your Password";
                  else if(!RegExp(r'^[0-9a-zA-Z]+[_@#]+[0-9a-zA-Z]').hasMatch(value)) return "Your Password does not match the patern";
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: () {
                if(_formkey.currentState!.validate()){ print("Invalid Input"); }
              }, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
