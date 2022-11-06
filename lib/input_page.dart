// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'output_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(255, 168, 168, 168),
            Color.fromARGB(255, 120, 120, 120),
            Color.fromARGB(255, 82, 82, 82),
            Color.fromARGB(255, 52, 52, 52),
          ],
          stops: [
            .3,
            .6,
            .8,
            .9,
            1,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(children: [
                SizedBox(
                  height: 45,
                ),

                //username
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Must input string',
                        ),
                        onChanged: (text) {
                          user = text;
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                //sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all(15),
                    ),
                    child: Center(
                        child: Text(
                      'Enter',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondScreen(
                                  user: user,
                                )),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
