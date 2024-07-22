// // ignore_for_file: library_private_types_in_public_api

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Gesture Detector',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         useMaterial3: false,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final double boxSize = 150.0;

//   // tap counter
//   int numTaps = 0;
//   int numDoubleTaps = 0;
//   int numLongPress = 0;

//   // initial position
//   double posX = 0.0;
//   double posY = 0.0;

//   void center(BuildContext context) {
//     posX = (MediaQuery.of(context).size.width / 2) - boxSize / 2;
//     posY = (MediaQuery.of(context).size.height / 2) - boxSize / 2 - 30;

//     setState(() {
//       posX = posX;
//       posY = posY;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (posX == 0) {
//       center(context);
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Gesture Detector'),
//       ),
//       body: Stack(
//         children: [
//           Positioned(
//             top: posY,
//             left: posX,
//             child: GestureDetector(
//               onTap: () {
//                 setState(() {
//                   numTaps++;
//                 });
//               },
//               onDoubleTap: () {
//                 setState(() {
//                   numDoubleTaps++;
//                 });
//               },
//               onLongPress: () {
//                 setState(() {
//                   numLongPress++;
//                 });
//               },
//               // // gesture detector cant have onVerticalDragUpdate/onHorizontalDragUpdate together with onPanUpdate
//               // onVerticalDragUpdate: (details) {
//               //   setState(() {
//               //     double delta = details.delta.dy;
//               //     posY += delta;
//               //   });
//               // },
//               // onHorizontalDragUpdate: (details) {
//               //   setState(() {
//               //     double delta = details.delta.dx;
//               //     posX += delta;
//               //   });
//               // },
//               onPanUpdate: (details) {
//                 setState(() {
//                   double deltaX = details.delta.dx;
//                   double deltaY = details.delta.dy;
//                   posX += deltaX;
//                   posY += deltaY;
//                 });
//               },
//               child: Container(
//                 width: boxSize,
//                 height: boxSize,
//                 decoration: const BoxDecoration(color: Colors.red),
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: Container(
//         color: Colors.yellow,
//         padding: const EdgeInsets.all(16.0),
//         child: Text(
//           'Taps: $numTaps - Double Taps: $numDoubleTaps - Long Press: $numLongPress',
//           style: Theme.of(context).textTheme.titleLarge,
//         ),
//       ),
//     );
//   }
// }
