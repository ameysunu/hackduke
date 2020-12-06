import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackduke/Survey/ques4.dart';
import 'package:hexcolor/hexcolor.dart';

class Question3 extends StatefulWidget {
  @override
  _Question3State createState() => _Question3State();
}

enum Options3 { o1, o2, o3, o4, o5, o6, o7, o8, o9, o10 }

class _Question3State extends State<Question3> {
  Options3 _character = Options3.o1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Theme(
              data: Theme.of(context).copyWith(
                unselectedWidgetColor: Colors.white,
              ),
              child: Column(
                children: [
                  Card(
                    margin: EdgeInsets.all(15),
                    elevation: 5.0,
                    child: ListTile(
                      title: Text(
                        'Question 3',
                        style: GoogleFonts.abel(
                            textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        )),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                    ),
                    color: Colors.blue[100],
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(15),
                    // ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Have you experienced any of these symptoms in the last 14 days? ',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Fever or chills',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Radio(
                      value: Options3.o1,
                      groupValue: _character,
                      onChanged: (Options3 value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Cough',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Radio(
                      value: Options3.o2,
                      groupValue: _character,
                      onChanged: (Options3 value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Shortness of breath or difficulty breathing',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Radio(
                      value: Options3.o3,
                      groupValue: _character,
                      onChanged: (Options3 value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Fatigue',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Radio(
                      value: Options3.o4,
                      groupValue: _character,
                      onChanged: (Options3 value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Muscle or body aches',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Radio(
                      value: Options3.o5,
                      groupValue: _character,
                      onChanged: (Options3 value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Headache',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Radio(
                      value: Options3.o6,
                      groupValue: _character,
                      onChanged: (Options3 value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'New loss of taste or smell',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Radio(
                      value: Options3.o7,
                      groupValue: _character,
                      onChanged: (Options3 value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Sore Throat',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Radio(
                      value: Options3.o8,
                      groupValue: _character,
                      onChanged: (Options3 value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Congestion or runny nose',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Radio(
                      value: Options3.o9,
                      groupValue: _character,
                      onChanged: (Options3 value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Nausea or vomiting',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Radio(
                      value: Options3.o10,
                      groupValue: _character,
                      onChanged: (Options3 value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RaisedButton(
                      color: HexColor('#3DF4C7'),
                      child: Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Next ➜",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Question4()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
