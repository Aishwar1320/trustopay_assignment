import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// services for contract data
class ContractData {
  final String id;
  final String contractUniqueId;
  final String tradeType;
  final String services;
  final String projectName;
  final int projectAmount;
  final String projectDescription;
  final String projectDeadline;
  final String buyer;
  final String seller;
  final bool projectCompletedStatus;
  final List<dynamic> contractAcceptanceStatus;
  final Map<String, dynamic> projectMilestoneTimeline;
  final List<dynamic> mapData;
  final List<dynamic> paymentsToTrustopay;
  final bool payoutRequest;
  final List<dynamic> milestones;

  // Cconstructor for initializing data
  ContractData({
    required this.id,
    required this.contractUniqueId,
    required this.tradeType,
    required this.services,
    required this.projectName,
    required this.projectAmount,
    required this.projectDescription,
    required this.projectDeadline,
    required this.buyer,
    required this.seller,
    required this.projectCompletedStatus,
    required this.contractAcceptanceStatus,
    required this.projectMilestoneTimeline,
    required this.mapData,
    required this.paymentsToTrustopay,
    required this.payoutRequest,
    required this.milestones,
  });

  // ContractData instance from JSON
  factory ContractData.fromJson(Map<String, dynamic> json) {
    return ContractData(
      id: json['_id'],
      contractUniqueId: json['contract_unique_id'],
      tradeType: json['trade_type'],
      services: json['services'],
      projectName: json['project_name'],
      projectAmount: json['project_amount'],
      projectDescription: json['project_description'],
      projectDeadline: json['project_deadline'],
      buyer: json['buyer'],
      seller: json['seller'],
      projectCompletedStatus: json['project_completed_status'],
      contractAcceptanceStatus: json['contract_acceptance_status'],
      projectMilestoneTimeline: json['project_milestone_timeline'],
      mapData: json['map_data'],
      paymentsToTrustopay: json['payments_to_trustopay'],
      payoutRequest: json['payout_request'],
      milestones: json['milestones'],
    );
  }
}

// to fetch contract data from the API
Future<ContractData> fetchContractData() async {
  final response = await http
      .get(Uri.parse('http://localhost:5000/api/contract')); // API url

  if (response.statusCode == 200) {
    // Parse the response JSON
    final Map<String, dynamic> json = jsonDecode(response.body)['data'];
    return ContractData.fromJson(json);
  } else {
    // Handle errors
    throw Exception('Failed to fetch contract data');
  }
}

// display error messages
class ErrorView extends StatelessWidget {
  final String error; // Error message to display

  const ErrorView({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Error: $error',
        style: const TextStyle(
          color: Colors.redAccent,
          fontSize: 16,
        ),
      ),
    );
  }
}

// display a "no data" message
class NoDataView extends StatelessWidget {
  const NoDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'No data available',
        style: TextStyle(
          color: Colors.white70,
          fontSize: 16,
        ),
      ),
    );
  }
}
