import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pulsecare_app/screens/patient/appoinments.dart';
import 'package:pulsecare_app/screens/patient/dashboard_screen.dart';
import 'package:pulsecare_app/screens/patient/health_tools/profile.dart';
import 'package:pulsecare_app/widgets/appoinment_booking.dart';

class PulseCare extends StatefulWidget {
  const PulseCare({super.key});

  @override
  State<PulseCare> createState() => _PulseCareState();
}

void _openBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (ctx) => const DoctorAppoinmentBooking(
      patientId: '1',
      patientName: 'JOHN DOE',
    ),
  );
}

int index = 0;
List screens =const <Widget>[
  PatientDashboard(),
  Appoinments(),
  ProfilePage()
];

class _PulseCareState extends State<PulseCare> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[index],
        bottomNavigationBar: CurvedNavigationBar(
          items: const [
            Icon(
              Icons.space_dashboard_rounded,
              color: Colors.white,
            ),
            Icon(
              Icons.event_note_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.person_outline_sharp,
              color: Colors.white,
            )
          ],
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          color: const Color.fromARGB(255, 4, 42, 255),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 350),
          onTap: (i) {
            setState(() {
              index = i;
            });
          },
        ),
      ),
    );
  }
}
