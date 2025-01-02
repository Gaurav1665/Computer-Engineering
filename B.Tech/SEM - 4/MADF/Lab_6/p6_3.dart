import 'package:flutter/material.dart';

class EqualParts extends StatelessWidget{
  const EqualParts({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.redAccent,)),
                  Expanded(child: Container(color: Colors.green,)),
                  Expanded(child: Container(color: Colors.blue,)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.brown,)),
                  Expanded(child: Container(color: Colors.blueGrey,)),
                  Expanded(child: Container(color: Colors.purple,)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.black,)),
                  Expanded(child: Container(color: Colors.red,)),
                  Expanded(child: Container(color: Colors.orange,)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class FlexDemo extends StatelessWidget{
// const FlexDemo({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Row(
//           children: [
//             Expanded(
//               child: Column(
//                 children: [
//                   Expanded(child: Container(color: Colors.blueGrey,),flex: 1),
//                   Expanded(child: Container(color: Colors.deepOrange,),flex: 1),
//                   Expanded(child: Container(color: Colors.blue,),flex: 1)
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Column(
//                 children: [
//                   Expanded(child: Container(color: Colors.red,),flex: 2,),
//                   Expanded(child: Container(color: Colors.green,),flex: 2),
//                   Expanded(child: Container(color: Colors.grey,),flex: 1),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Column(
//                 children: [
//                   Expanded(child: Container(color: Colors.orange,),flex: 1),
//                   Expanded(child: Container(color: Colors.yellow,),flex: 3),
//                   Expanded(child: Container(color: Colors.purple,),flex: 2),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }