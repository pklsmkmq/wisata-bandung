import 'package:flutter/material.dart';
import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      home: MainScreen(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size screenSize = MediaQuery.of(context).size;
 
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Row(
//             children: [
//               Container(
//                 width: screenSize.width * 0.5,
//                 height: screenSize.height * 0.4,
//                 color: Colors.purple,
//               ),
//               Container(
//                 width: screenSize.width * 0.5,
//                 height: screenSize.height * 0.7,
//                 color: Colors.pink,
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// class Rainbow extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           child: Container(
//             color: Colors.red,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.orange,
//           ),
//         ),
//         Expanded(
//           flex: 2,
//           child: Container(
//             color: Colors.yellow,
//           ),
//         ),
//       ]
//     );
//   }
// }