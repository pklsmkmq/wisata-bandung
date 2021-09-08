import 'package:flutter/material.dart';
import 'model/tourism_place.dart';

var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final TourismPlace place;
 
  DetailScreen({this.place});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.asset(place.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.black45,
                      child: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
                        Navigator.pop(context);
                      }),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text(
                        place.openDays,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(height: 8.0),
                      Text(
                        place.openTime,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8.0),
                      Text(
                        place.ticketPrice,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: place.imageUrls.map((url) {
                  return Padding(
                    padding: EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class DetailScreen extends StatelessWidget {
//   final TourismPlace place;

//   DetailScreen({this.place});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Stack(
//                 children: [
//                   Image.asset(place.imageAsset),
//                   SafeArea(
//                     child: Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           CircleAvatar(
//                             backgroundColor: Colors.grey,
//                             child: IconButton(
//                               icon: Icon(
//                                 Icons.arrow_back,
//                                 color: Colors.white,
//                               ),
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                             ),
//                           ),
//                           FavoriteButton(),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Container(
//                 child: Text(
//                   place.name,
//                   style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Staatliches'),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       child: Column(
//                         children: [
//                           Icon(Icons.calendar_today),
//                           SizedBox(height: 8),
//                           Text(
//                             place.openDays,
//                             style: informationTextStyle,
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       child: Column(
//                         children: [
//                           Icon(Icons.access_time_rounded),
//                           SizedBox(height: 8),
//                           Text(
//                             place.openTime,
//                             style: informationTextStyle,
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       child: Column(
//                         children: [
//                           Icon(Icons.monetization_on),
//                           SizedBox(height: 8),
//                           Text(
//                             place.ticketPrice,
//                             style: informationTextStyle,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.all(16),
//                 child: Text(place.description,
//                     style: TextStyle(fontSize: 16),
//                     textAlign: TextAlign.center),
//               ),
//               Container(
//                 height: 150,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: place.imageUrls.map((url) {
//                     return Padding(
//                       padding: EdgeInsets.all(4),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Image.network(url),
//                       ),
//                     );
//                   }).toList(),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class FavoriteButton extends StatefulWidget {
//   @override
//   _FavoriteButtonState createState() => _FavoriteButtonState();
// }

// class _FavoriteButtonState extends State<FavoriteButton> {
//   bool isFavorite = false;

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: Icon(
//         isFavorite ? Icons.favorite : Icons.favorite_border
//       ),
//       onPressed: () {
//         setState(() {
//           isFavorite = !isFavorite;
//         });
//       },
//     );
//   }
// }
