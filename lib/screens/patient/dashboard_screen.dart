import 'package:flutter/material.dart';
import 'package:pulsecare_app/widgets/category_list.dart';

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
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
                        child: Container(
                          height: 130,
                          
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const[
                              CategoryList(cardColor: Color.fromARGB(255, 17, 223, 255),cardName: "Book Appoinment",),
                              CategoryList(cardColor: Color.fromARGB(255, 239, 166, 8),cardName: "Emergency Booking",),
                              CategoryList(cardColor: Color.fromARGB(255, 255, 0, 140),cardName: "Doctor Availability",),
                              CategoryList(cardColor: Color.fromARGB(255, 29, 158, 222),cardName: "First Aid Guide",),
                              CategoryList(cardColor: Color.fromARGB(255, 78, 217, 13),cardName: "Water remainder",),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
              ),
            )
          ],
        ));
  }
}
