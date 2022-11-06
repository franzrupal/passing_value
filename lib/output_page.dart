// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:passing_data/input_page.dart';

// ignore: must_be_immutable
class SecondScreen extends StatefulWidget {
  String user;
  SecondScreen({super.key, required this.user});

  @override
  // ignore: no_logic_in_create_state
  State<SecondScreen> createState() => _SecondScreenState(user);
}

class _SecondScreenState extends State<SecondScreen> {
  String user;
  _SecondScreenState(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 240, 243, 1),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 280),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: Size.fromWidth(90)),
              child: Center(
                  child: Text(
                'Logout',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              )),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                'Welcome Home, ',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text(
                user,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Color.fromARGB(0, 0, 0, 0)),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(children: [
                  Icon(
                    color: Color.fromARGB(255, 0, 187, 255),
                    Icons.bed,
                    size: 100,
                  ),
                  Text('Bedroom')
                ]),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Color.fromARGB(0, 0, 0, 0)),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(children: [
                  Icon(
                    color: Color.fromARGB(255, 0, 187, 255),
                    Icons.chair_rounded,
                    size: 100,
                  ),
                  Text('Living room')
                ]),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Color.fromARGB(0, 0, 0, 0)),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(children: [
                  Icon(
                    color: Color.fromARGB(255, 0, 187, 255),
                    Icons.dining,
                    size: 100,
                  ),
                  Text('Kitchen')
                ]),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Color.fromARGB(0, 0, 0, 0)),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(children: [
                  Icon(
                    color: Color.fromARGB(255, 0, 187, 255),
                    Icons.bathtub,
                    size: 100,
                  ),
                  Text('Bathroom')
                ]),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Color.fromARGB(0, 0, 0, 0)),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(children: [
                  Icon(
                    color: Color.fromARGB(255, 0, 187, 255),
                    Icons.table_bar,
                    size: 100,
                  ),
                  Text('Dining Room')
                ]),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Color.fromARGB(0, 0, 0, 0)),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(children: [
                  Icon(
                    color: Color.fromARGB(255, 0, 187, 255),
                    Icons.computer_sharp,
                    size: 100,
                  ),
                  Text('Office')
                ]),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home,
                size: 50,
              ),
              const SizedBox(
                width: 50,
              ),
              Opacity(
                opacity: 0.5,
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Opacity(
                opacity: 0.5,
                child: Icon(
                  Icons.bolt,
                  size: 50,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Opacity(
                opacity: 0.5,
                child: Icon(
                  Icons.settings,
                  size: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
