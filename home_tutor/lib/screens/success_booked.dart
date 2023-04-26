import 'package:flutter/material.dart';
import '../components/button.dart';
import 'package:lottie/lottie.dart';

class AppointmentBooked extends StatefulWidget {
  const AppointmentBooked({super.key});

  @override
  State<AppointmentBooked> createState() => _AppointmentBookedState();
}

class _AppointmentBookedState extends State<AppointmentBooked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Lottie.asset('images/abrsh.jpg')),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text(
              "successfully Booked",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: Button(
                width: double.infinity,
                title: "back to home page",
                onPressed: () => Navigator.of(context).pushNamed("main"),
                disable: false),
          )
        ],
      )),
    );
  }
}
