import 'package:flutter/material.dart';

class Appoinments extends StatelessWidget {
  const Appoinments({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("List of Appoinments",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 50),
      ),
    ));
  }
}