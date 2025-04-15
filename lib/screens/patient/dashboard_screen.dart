import 'package:flutter/material.dart';

class PatientDashboard extends StatefulWidget {
  const PatientDashboard({super.key});

  @override
  State<PatientDashboard> createState() => _PatientDashboardState();
}

class _PatientDashboardState extends State<PatientDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              )),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: CircleAvatar(
                maxRadius: 17,
                backgroundColor: Colors.white,
              ),
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 4, 42, 255),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(left: 25, top: 20, bottom: 20),
                child: Text(
                  "Hi, John",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                
                // width: double.infinity,
              
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
                  child: const Column(
                    children: [
                      Row(
                        children: [
              
                        ],
                      )
                    ],
                  ),
              ),
            )
          ],
        ));
  }
}
