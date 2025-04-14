// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DoctorAppoinmentBooking extends StatefulWidget {
  final String patientId;
  final String patientName;
  const DoctorAppoinmentBooking(
      {required this.patientId, required this.patientName, super.key});

  @override
  State<DoctorAppoinmentBooking> createState() =>
      _DoctorAppoinmentBookingState();
}

class _DoctorAppoinmentBookingState extends State<DoctorAppoinmentBooking> {
  final _formKey = GlobalKey<FormState>();

  String? _selectedDoctor;

  String? _reason;
  DateTime? _selectedDate;

  String? _selectedTime;

  bool _isEmergency = false;

  final List<String> doctors = [
    'Dr. John Doe',
    'Dr. Jane Smith',
    'Dr. Emily Johnson',
    'Dr. Michael Brown',
  ];

  final List<String> timeSlot = [
    '9:00 AM',
    '9:30 AM',
    '10:00 AM',
    '10:30 AM',
    '11:00 AM',
    '11:30 AM',
    '12:00 PM',
    '1:00 PM',
    '1:30 PM'
  ];

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              const SizedBox(height: 30,),

            
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  labelText: 'Select Doctor',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10), 
                  ),
                value: _selectedDoctor,
                items: doctors
                    .map((doc) => DropdownMenuItem(value: doc, child: Text(doc)))
                    .toList(),
                onChanged: (value) => setState(() {
                  _selectedDoctor = value;
                }),
              ),


              const SizedBox(height: 10,),
              ListTile(
                title: Text(_selectedDate == null
                    ? "Select Date"
                    : DateFormat.yMMMd().format(_selectedDate!)),
                trailing: const Icon(Icons.calendar_today),
                onTap: () async {
                  DateTime? picked = await showDatePicker(
                    context: context,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(const Duration(days: 30)),
                    initialDate: DateTime.now(),
                  );
                  if (picked != null) setState(() => _selectedDate = picked);
                },
              ),


              const SizedBox(height: 10,),
              DropdownButtonFormField(
                decoration: const InputDecoration(labelText: 'Select Time'),
                value: _selectedTime,
                items: timeSlot
                    .map((time) =>
                        DropdownMenuItem(value: time, child: Text(time)))
                    .toList(),
                onChanged: (value) => setState(() {
                  _selectedTime = value;
                }),
              ),


              const SizedBox(height: 10,),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Reason for Visit',),
                onChanged: (value) => setState(() {
                  _reason = value;
                }),
              ),


              const SizedBox(height: 10,),
              SwitchListTile(
                title: const Text("Emergency Booking"),
                value: _isEmergency,
                onChanged: (val) => setState(() => _isEmergency = val),
              ),
              const SizedBox(height: 10),


              ElevatedButton(onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Handle the booking logic here
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Booking Confirmed')),
                  );
                }
              }, child: const Text("Book Appointment")),
            ],
          ),
        ));
  }
} 
