import 'package:flutter/material.dart';

class CitiesListview extends StatelessWidget {
  CitiesListview({super.key});
  List<String> cities = [
    'Ahmedabad',
    'Surat',
    'Vadodara',
    'Rajkot',
    'Bhavnagar',
    'Jamnagar',
    'Gandhinagar',
    'Valsad',
    'Junagadh',
    'Anand',
    'Navsari',
    'Amreli',
    'Daman',
    'Mehsana',
    'Nadiad',
    'Patan',
    'Himatnagar',
    'Porbandar',
    'Morbi',
    'Veraval',
    'Bharuch',
    'Surendranagar',
    'Kutch',
    'Kadi',
    'Gandhinagar',
    'Tapi',
    'Vapi',
    'Godhra',
    'Bulsar',
    'Palanpur',
    'Dahod',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffa8dadc),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            color: const Color(0xfff1faee),
            elevation: 2,
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(cities[index],style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff1d3557)),textAlign: TextAlign.center,),
            ),
          );
        },
        itemCount: cities.length,
      ),
    );
  }

}
