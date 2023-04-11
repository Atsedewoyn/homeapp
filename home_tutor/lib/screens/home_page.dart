import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_tutor/components/appointment_card.dart';
import 'package:home_tutor/utils/config.dart';

import '../components/teacher_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Map<String, dynamic>> teachCat = [
    {
      "icon": FontAwesomeIcons.book,
      "Category": "General",
    },
    {
      "icon": FontAwesomeIcons.book,
      "Category": "English",
    },
    {
      "icon": FontAwesomeIcons.book,
      "Category": "Maths",
    },
    {
      "icon": FontAwesomeIcons.book,
      "Category": "Biology",
    },
    {
      "icon": FontAwesomeIcons.book,
      "Category": "Physics",
    },
    {
      "icon": FontAwesomeIcons.book,
      "Category": "Chemistry",
    },
    {
      "icon": FontAwesomeIcons.book,
      "Category": "Amharic",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Atsede',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    child: CircleAvatar(
                      radius: 26,
                      backgroundImage: AssetImage('images/atse.jpg'),
                    ),
                  )
                ],
              ),
              Config.spaceSmall,
              //category listing
              const Text(
                'Category',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Config.spaceSmall,
              SizedBox(
                height: Config.heightSize * 0.07,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List<Widget>.generate(teachCat.length, (index) {
                    return Card(
                      margin: const EdgeInsets.only(right: 20),
                      color: Config.primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            FaIcon(
                              teachCat[index]['icon'],
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              teachCat[index]['Category'],
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Config.spaceSmall,
              const Text(
                'Appointment today',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Config.spaceSmall,
              const AppointmentCard(),
              Config.spaceSmall,
              const Text(
                'Top Teachers',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              //lists of top teachers
              //lets build doctor card
              Config.spaceSmall,
              Column(
                children: List.generate(
                  10,
                  (index) {
                    return const TeacherCard(
                      route: 'teacher_details',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
