import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BirthdayCard extends StatefulWidget {
  String? name;
  BirthdayCard({super.key, this.name});

  @override
  State<BirthdayCard> createState() => _BirthdayCardState();
}

class _BirthdayCardState extends State<BirthdayCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Happy Birthday ${widget.name}"),
      ),
    );
  }
}

class PersonName extends StatefulWidget {
  const PersonName({super.key});

  @override
  State<PersonName> createState() => _PersonNameState();
}

class _PersonNameState extends State<PersonName> {
  TextEditingController name = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: name,
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),
              ),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => BirthdayCard(name: name.text,),));
            }, child: Text("Congratulate"))
          ],
        ),
      ),
    );
  }
}

