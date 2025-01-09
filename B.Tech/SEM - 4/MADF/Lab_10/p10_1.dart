import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Log-in",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 5),
        )),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
                prefix: Icon(Icons.person),
                labelText: "username",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
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
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
