// Old Design Code

// import 'package:flutter/material.dart';
// import 'package:trustopay_assignment/screens/contract_details.dart';

// class ListContainer extends StatefulWidget {
//   final String title;
//   final String subtitle;

//   const ListContainer({
//     super.key,
//     required this.title,
//     required this.subtitle,
//   });

//   @override
//   State<ListContainer> createState() => _ListContainerState();
// }

// class _ListContainerState extends State<ListContainer> {
//   bool isFilled = true;

//   Future<void> _handleButtonTap() async {
//     setState(() {
//       isFilled = !isFilled; // toggle the button state
//     });

//     // add a small delay before navigating
//     await Future.delayed(const Duration(milliseconds: 300));

//     // to the ContractPage
//     await Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => const ContractPage(),
//       ),
//     );

//     // reset the button
//     setState(() {
//       isFilled = true;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: Colors.white70,
//         borderRadius: BorderRadius.circular(5),
//         boxShadow: const [
//           BoxShadow(
//             color: Colors.grey,
//             blurRadius: 3,
//           )
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.only(
//           left: 20.0,
//           right: 20,
//           top: 8,
//           bottom: 8,
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   widget.title,
//                   style: const TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   widget.subtitle,
//                   style: const TextStyle(fontSize: 12),
//                 ),
//               ],
//             ),
//             GestureDetector(
//               onTap: _handleButtonTap,
//               child: Container(
//                 decoration: const BoxDecoration(boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey,
//                     blurRadius: 5,
//                   )
//                 ]),
//                 child: Image.asset(
//                   isFilled
//                       ? "assets/images/Button filled.png"
//                       : "assets/images/Button outlined.png",
//                   width: 70,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
