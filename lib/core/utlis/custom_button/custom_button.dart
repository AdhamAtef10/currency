// import 'package:flutter/material.dart';
//
// class CustomButton extends StatelessWidget {
//   final height;
//   final width;
//   final textColor;
//   final buttonColor;
//   final function;
//   final text;
//   CustomButton(
//       {this.height,
//         this.width,
//         this.textColor,
//         this.buttonColor,
//         this.function,
//         this.text});
//   @override
//   Widget build(BuildContext context) {
//     return  SizedBox(
//       height:height ,
//       width: width,
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30.0),
//           ),
//           primary: buttonColor,
//           onPrimary: textColor, // foreground (text) color
//         ),
//         onPressed: function ,
//         child:  Text(
//           text,
//           style: const TextStyle(
//               fontWeight: FontWeight.w800, fontSize: 25),
//         ),
//       ),
//     );
//   }
// }