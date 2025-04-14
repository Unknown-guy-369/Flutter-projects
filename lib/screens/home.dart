import 'package:flutter/material.dart';
import 'package:pulsecare_app/widgets/appoinment_booking.dart';

class PulseCare extends StatefulWidget {
  const PulseCare({super.key});

  @override
  State<PulseCare> createState() => _PulseCareState();
}

void _openBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
     builder: (ctx) =>const DoctorAppoinmentBooking(patientId: '1', patientName: 'JOHN DOE',),
     );
}

class _PulseCareState extends State<PulseCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PulseCare"),
      ),
      body: ElevatedButton(
          onPressed: () {
            _openBottomSheet(context);
          },
          child: const Text("Book Appointment")),
    );
  }
}
