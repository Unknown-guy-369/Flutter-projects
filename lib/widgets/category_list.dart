import 'package:flutter/material.dart';
import 'package:pulsecare_app/widgets/appoinment_booking.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({required this.cardColor,required this.cardName, super.key});
  final Color cardColor;
  final String cardName;
  @override
  Widget build(BuildContext context) {
    Widget screen =
        DoctorAppoinmentBooking(patientId: "1", patientName: "Abishek");

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => print("Clicked"),
        child: Container(
          width: 200,
          decoration: BoxDecoration(
              color: cardColor,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Center(
              child: Text(
            cardName,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
