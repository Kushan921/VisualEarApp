import 'package:flutter/material.dart';
import 'package:visualear/views/activity.dart';
import 'package:visualear/views/maths.dart';
import 'package:visualear/views/science.dart';
import 'package:visualear/views/walking.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String color = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 30),
          child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            color = 'M';
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MathsPage()));
                        },
                        child: Container(
                          height: 220,
                          width: 170,
                          decoration: BoxDecoration(
                            color: color == 'M'
                                ? Colors.blue[700]
                                : Colors.blue[900],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.add,
                                size: 100,
                                color: Colors.white,
                              ),
                              Text(
                                "Learning Maths",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            color = 'S';
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SciencePage()));
                        },
                        child: Container(
                          height: 220,
                          width: 170,
                          decoration: BoxDecoration(
                            color: color == 'S'
                                ? Colors.blue[700]
                                : Colors.blue[900],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(
                                IconData(0xe3d0, fontFamily: 'MaterialIcons'),
                                size: 90,
                                color: Colors.white,
                              ),
                              Text("Learning Science",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.white))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            color = 'W';
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WalkingPage()));
                        },
                        child: Container(
                          height: 220,
                          width: 170,
                          decoration: BoxDecoration(
                            color: color == 'W'
                                ? Colors.blue[700]
                                : Colors.blue[900],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.add,
                                size: 100,
                                color: Colors.white,
                              ),
                              Text(
                                "Walking Mode",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            color == 'A';
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ActivityPage()));
                        },
                        child: Container(
                          height: 220,
                          width: 170,
                          decoration: BoxDecoration(
                            color: color == 'A'
                                ? Colors.blue[700]
                                : Colors.blue[900],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(
                                IconData(0xe3d0, fontFamily: 'MaterialIcons'),
                                size: 90,
                                color: Colors.white,
                              ),
                              Text(
                                "Activity Mode",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
