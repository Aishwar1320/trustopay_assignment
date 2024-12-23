// New Design

import 'package:flutter/material.dart';
import 'package:trustopay_assignment/widgets/buttons.dart';

class ContractsPage extends StatefulWidget {
  const ContractsPage({super.key});

  @override
  ContractsPageState createState() => ContractsPageState();
}

class ContractsPageState extends State<ContractsPage> {
  bool _isContractSelected = true;

  // To toggle the view between contract details and milestone details
  void _toggleView(bool isContract) {
    setState(() {
      _isContractSelected = isContract;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
          const Drawer(),
          const SizedBox(width: 40),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Header(),
                    const SizedBox(height: 40),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "All Contracts / Flower logo design",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: screenWidth * 0.6,
                                ),
                                padding: const EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1, 2),
                                      blurRadius: 5,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Toggle Buttons
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            _toggleView(true);
                                          },
                                          child: Text(
                                            "Contract details",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: _isContractSelected
                                                  ? FontWeight.bold
                                                  : FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                        const Text("|"),
                                        TextButton(
                                          onPressed: () {
                                            _toggleView(false);
                                          },
                                          child: Text(
                                            "Milestone",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: !_isContractSelected
                                                  ? FontWeight.bold
                                                  : FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    // Display ContractDetails or MilestoneDetails
                                    _isContractSelected
                                        ? const ContractDetails()
                                        : const MilestoneDetails(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 40),
                        const Expanded(
                          flex: 2,
                          child: BuyerSellerDetails(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Side Drawer
class Drawer extends StatelessWidget {
  const Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
              offset: Offset(1, 1),
            ),
          ],
        ),
        height: 800,
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // i didn't had logo of the company so for demo purpose i have used Text.
              const Text(
                "Trustopay",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_circle_outline,
                        color: Colors.black,
                      ),
                    ),
                    const Text("Create Contract"),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(),

              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          label: const Row(
                            children: [
                              Icon(
                                Icons.home_outlined,
                                size: 20,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Home",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          label: const Row(
                            children: [
                              Icon(
                                Icons.file_copy_outlined,
                                size: 17,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "My Contracts",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          label: const Row(
                            children: [
                              Icon(
                                Icons.people,
                                size: 17,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Friends",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          label: const Row(
                            children: [
                              Icon(
                                Icons.money,
                                size: 17,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Transactions",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          label: const Row(
                            children: [
                              Icon(
                                Icons.message_outlined,
                                size: 17,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Messages",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 392,
                  ),
                  const Divider(),
                  TextButton.icon(
                      onPressed: () {},
                      label: const Row(
                        children: [
                          Icon(
                            Icons.help_outline,
                            size: 17,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Help",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Top Header
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.calendar_today,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text("Thursday, November 7"),
        const SizedBox(
          width: 700,
        ),
        Container(
          height: 40,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black26,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Search user using number or name",
                style: TextStyle(color: Colors.black87),
              ),
              Icon(
                Icons.search,
                size: 18,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        const Text("|"),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none,
            size: 17,
          ),
        ),
        const Text("|"),
        const SizedBox(
          width: 15,
        ),
        const Row(
          children: [
            CircleAvatar(
              maxRadius: 15,
              child: Icon(Icons.person),
            ),
            SizedBox(
              width: 10,
            ),
            Text("Aishwar K.")
          ],
        ),
      ],
    );
  }
}

// Details regarding contracts
class ContractDetails extends StatelessWidget {
  const ContractDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              "Contract ID: 1d25d5",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Buyer / Seller",
                style: TextStyle(color: Colors.black45),
              ),
              Text("Aishwar Kulkarni"),
              SizedBox(
                height: 20,
              ),
              Text(
                "Project name",
                style: TextStyle(color: Colors.black45),
              ),
              Text("Logo design for Flower shop"),
              SizedBox(
                height: 20,
              ),
              Text(
                "Project description",
                style: TextStyle(color: Colors.black45),
              ),
              Text(
                  "We are seeking a talented graphic designer to create a distinctive logo for our flower shop. the logo should reflect the beauty and vibrancy of our floral offerings while capturing the essence of our brand. We envision a design that is both elegant and memorable, appealing to our target audience."),
              SizedBox(
                height: 20,
              ),
              Text(
                "Project category",
                style: TextStyle(color: Colors.black45),
              ),
              Text("Logo design, Graphic design"),
              SizedBox(
                height: 20,
              ),
              Text(
                "Project deadline",
                style: TextStyle(color: Colors.black45),
              ),
              Text("01/01/25"),
              SizedBox(
                height: 20,
              ),
              Text(
                "Ownership rights",
                style: TextStyle(color: Colors.black45),
              ),
              Text("Buyer"),
              SizedBox(
                height: 20,
              ),
              Text(
                "Number of revisions",
                style: TextStyle(color: Colors.black45),
              ),
              Text("5"),
            ],
          )
        ],
      ),
    );
  }
}

// Milestones details
class MilestoneDetails extends StatelessWidget {
  const MilestoneDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Milestones"),
        Row(
          children: [
            const Text("1."),
            Container(
              height: 40,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("Initial Consultation and Research"),
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(r"$400"),
            ),
            const Icon(Icons.check_circle),
          ],
        ),
      ],
    );
  }
}

// Buyer seller details + Recent activity
class BuyerSellerDetails extends StatelessWidget {
  const BuyerSellerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 45,
        ),
        Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(1, 2),
                blurRadius: 5,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Buyer Details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              CircleAvatar(
                maxRadius: 30,
                child: Icon(Icons.person),
              ),
              Text(
                "Jessica",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Email: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("jassica@gmail.com"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Phone no: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("1234567890"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(1, 2),
                blurRadius: 5,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Seller Details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              CircleAvatar(
                maxRadius: 30,
                child: Icon(Icons.person),
              ),
              Text(
                "Aastha",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Email: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Aastha@gmail.com"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Phone no: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("1234567890"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 185,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(1, 2),
                blurRadius: 5,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Recent Activity",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                width: 280,
                child: Text(
                    "Jessica wants to create a contract with you for the project Flower logo design. Please review and respond."),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    color: Colors.white,
                    label: "Decline",
                    textColor: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MyButton(
                    color: Colors.deepPurple,
                    label: "Accept",
                    textColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
