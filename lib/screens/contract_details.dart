// Old Design Code with APi Integration

// import 'package:flutter/material.dart';
// import 'package:trustopay_assignment/controllers/contract_controller.dart';
// import 'package:trustopay_assignment/service.dart';

// /// Displays contract details
// class ContractPage extends StatelessWidget {
//   const ContractPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final contractController = ContractController();

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'C O N T R A C T  D E T A I L S',
//           style: TextStyle(color: Colors.white70),
//         ),
//         iconTheme: const IconThemeData(color: Colors.white70),
//         elevation: 10,
//         backgroundColor: Colors.black87,
//         shadowColor: Colors.grey,
//       ),

//       // display contract and error
//       body: FutureBuilder(
//         future: contractController.getContractData(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator()); // Loading
//           } else if (snapshot.hasError) {
//             return ErrorView(error: snapshot.error.toString()); // Error handing
//           } else if (snapshot.hasData) {
//             final contract = snapshot.data!;
//             return ContractDetailsView(contract: contract);
//           } else {
//             return const NoDataView(); // No data there
//           }
//         },
//       ),
//     );
//   }
// }

// // contract information
// class ContractDetailsView extends StatelessWidget {
//   final ContractData contract;

//   const ContractDetailsView({super.key, required this.contract});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width; // for responsive

//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _buildSectionHeader('C O N T R A C T  O V E R V I E W'),
//           const SizedBox(height: 25),

//           Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // shortcuts
//               Expanded(
//                 flex: screenWidth > 800 ? 1 : 1,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     _buildInfoRow('Services', contract.services, screenWidth),
//                     const SizedBox(height: 10),
//                     _buildInfoRow('Buyer', contract.buyer, screenWidth),
//                     const SizedBox(height: 10),
//                     _buildInfoRow('Seller', contract.seller, screenWidth),
//                     const SizedBox(height: 10),
//                     _buildInfoRow('Amount',
//                         '\$${contract.projectAmount.toString()}', screenWidth),
//                     const SizedBox(height: 10),
//                     _buildInfoRow(
//                         'Deadline', contract.projectDeadline, screenWidth),
//                     const SizedBox(height: 30),
//                     _buildSectionHeader('M I L E S T O N E S'),
//                   ],
//                 ),
//               ),

//               // responsive logo
//               if (screenWidth > 600) ...[
//                 Expanded(
//                   flex: 1,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 220, bottom: 60),
//                     child: Text(
//                       "Q U I C K S H O O T",
//                       style: TextStyle(
//                         fontSize: screenWidth > 800 ? 50 : 30,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ] else ...[
//                 const Padding(
//                   padding: EdgeInsets.only(
//                     bottom: 60,
//                     right: 25,
//                   ),
//                   child: Text(
//                     "Q U I C K S H O O T",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                 ),
//               ],
//             ],
//           ),
//           const SizedBox(height: 20),

//           // milestones
//           ...contract.milestones.map((milestone) {
//             return MilestoneCard(milestone: milestone);
//           }),
//         ],
//       ),
//     );
//   }

//   // section header
//   Widget _buildSectionHeader(String title) {
//     return Text(
//       title,
//       style: const TextStyle(
//         fontSize: 20,
//         color: Colors.black87,
//       ),
//     );
//   }

//   // rows
//   Widget _buildInfoRow(String label, String value, double screenWidth) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       width: screenWidth > 600 ? screenWidth * 0.8 : screenWidth * 0.4,
//       decoration: BoxDecoration(
//         color: Colors.white70,
//         borderRadius: BorderRadius.circular(8),
//         boxShadow: const [
//           BoxShadow(color: Colors.grey, blurRadius: 3),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             label,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.black87,
//               fontSize: screenWidth > 600 ? 16 : 14,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             value,
//             style: TextStyle(
//               color: Colors.black87,
//               fontSize: screenWidth > 600 ? 14 : 12,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// /// milestone card
// class MilestoneCard extends StatelessWidget {
//   final Map<String, dynamic> milestone;

//   const MilestoneCard({super.key, required this.milestone});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;

//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Colors.white70,
//           boxShadow: const [
//             BoxShadow(color: Colors.grey, blurRadius: 3),
//           ],
//         ),
//         child: ListTile(
//           title: Text(
//             milestone['title'], // title
//             style: TextStyle(
//               color: Colors.black87,
//               fontWeight: FontWeight.bold,
//               fontSize: screenWidth > 600 ? 16 : 14,
//             ),
//           ),
//           subtitle: Text(
//             milestone['description'], // description
//             style: TextStyle(
//               color: Colors.black87,
//               fontSize: screenWidth > 600 ? 14 : 12,
//             ),
//           ),
//           trailing: Text(
//             'Due: ${milestone['due_date']}', // due date
//             style: TextStyle(
//               color: Colors.black87,
//               fontSize: screenWidth > 600 ? 14 : 12,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
