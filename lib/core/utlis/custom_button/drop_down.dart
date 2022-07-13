// import 'package:flutter/material.dart';
//
// List<String> currencies = [
//   'EGP',
//   'USD',
//   'AED',
//   'EUR',
//   'JPY',
//   'GBP',
//   'CAD',
//   'TRY',
//   'SAR',
//   'AZN',
//   'NGN',
//   'PAB',
//   'KMF',
//   'HRK',
//   'ETB',
//   'XPF',
//   'GHS',
//   'GNF',
//   'BRL'
// ];
// Widget customDropDownMenu(
//     List<String> currencies , String? value , onChangeValue(val)){
//   return DropdownButtonHideUnderline(
//     child: Padding(
//       padding: const EdgeInsets.symmetric(vertical:14.0, horizontal: 18.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.grey[300],
//           borderRadius: BorderRadius.circular(17),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.only(left: 19.0, right: 10.0),
//           child: DropdownButton<String>(
//             menuMaxHeight: 290,
//             value: value,
//             iconSize: 25,
//             icon: const Icon(
//               Icons.arrow_circle_down_rounded,
//               color: Colors.black,
//             ),
//             items: currencies.map(buildMenuItem).toList(),
//             onChanged:(String? val)=> onChangeValue(val),
//
//           ),
//         ),
//       ),
//     ),
//   );
// }
// DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
//   value: item,
//   child: Text(
//     item,
//     style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//   ),
// );