import 'package:flutter/material.dart';

class CustomFormValidation extends StatefulWidget {
  CustomFormValidation({super.key});

  @override
  State<CustomFormValidation> createState() => _CustomFormValidationState();
}

class _CustomFormValidationState extends State<CustomFormValidation> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cpassword = TextEditingController();

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
                  labelText: "Email",
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
                validator: (value) {
                  if(value!.isEmpty) {
                    return "Enter Your Email Address";
                  } else if (!RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+').hasMatch(value)) {
                    return "Your Email does not match the pattern";
                  }
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
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
                validator: (value) {
                  if(value!.isEmpty) {
                    return "Enter Your Password";
                  } else if(value.length < 8) {
                    return "Password must contain at least 8 characters";
                  }else if(!RegExp(r'^[0-9a-zA-Z]+[_@#]+[0-9a-zA-Z]').hasMatch(value)) {
                    return "Your Password does not match the pattern";
                  }
                },
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: cpassword,
                decoration: InputDecoration(
                  prefix: Icon(Icons.lock_clock_rounded),
                  labelText: "Conform Password",
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
                validator: (value) {
                  if(value!.isEmpty) {
                    return "Enter Your Password";
                  } else if(value != password.text.toString()) {
                    return "Conform Password does not match the password";
                  }
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
