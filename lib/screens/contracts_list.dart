import 'package:flutter/material.dart';
import 'package:trustopay_assignment/widgets/list_container.dart';

/// Displays a list of contracts
class ContractsList extends StatelessWidget {
  const ContractsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              child: CircleAvatar(
                maxRadius: 40,
                child: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 30),

            // Navigation buttons
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("H O M E",
                      style: TextStyle(color: Colors.black)),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text("A B O U T",
                      style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),

      // app bar
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.black87,
        shadowColor: Colors.grey,
        title: const Center(
          child: Text(
            "Y O U R  C O N T R A C T S",
            style: TextStyle(color: Colors.white70),
          ),
        ),
      ),

      // list of contracts
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Recent contracts section
              Text("R E C E N T  C O N T R A C T S",
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 25),
              Text("20/12/2024",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
              Column(
                children: [
                  ListContainer(
                      title: "Quick Shoot",
                      subtitle: "This contract is first in the list."),
                  SizedBox(height: 15),
                  ListContainer(
                      title: "TrustoPay",
                      subtitle: "This contract is second in the list."),
                  SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("21/12/2024",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)),
                      SizedBox(height: 15),
                      ListContainer(
                          title: "TrustoPay",
                          subtitle: "This contract is third in the list."),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25),

              // all contracts section
              Text("A L L  C O N T R A C T S", style: TextStyle(fontSize: 20)),
              SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("20/12/2024",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  SizedBox(height: 15),
                  ListContainer(
                      title: "Quick Shoot",
                      subtitle: "This contract is first in the list."),
                  SizedBox(height: 15),
                  ListContainer(
                      title: "TrustoPay",
                      subtitle: "This contract is second in the list."),
                  SizedBox(height: 15),
                  Text("21/12/2024",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  SizedBox(height: 15),
                  ListContainer(
                      title: "TrustoPay",
                      subtitle: "This contract is third in the list."),
                  SizedBox(height: 15),
                  ListContainer(
                      title: "TrustoPay",
                      subtitle: "This contract is forth in the list."),
                  SizedBox(height: 15),
                  ListContainer(
                      title: "TrustoPay",
                      subtitle: "This contract is fifth in the list."),
                  SizedBox(height: 15),
                  ListContainer(
                      title: "TrustoPay",
                      subtitle: "This contract is sixth in the list."),
                  SizedBox(height: 15),
                  ListContainer(
                      title: "TrustoPay",
                      subtitle: "This contract is seventh in the list."),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
