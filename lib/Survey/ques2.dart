import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackduke/Survey/ques3.dart';
import 'package:hackduke/Survey/ques4.dart';
import 'package:hexcolor/hexcolor.dart';

class Question2 extends StatefulWidget {
  @override
  _Question2State createState() => _Question2State();
}

enum Options2 { o1, o2, o3, o4, o5, o6 }

bool _isSelected = false;
bool _isSelected1 = false;
bool _isSelected2 = false;
bool _isSelected3 = false;
bool _isSelected4 = false;
bool _isSelected5 = false;
bool _isSelected6 = false;
bool _isSelected7 = false;
bool _isSelected8 = false;
bool _isSelected9 = false;

class _Question2State extends State<Question2> {
  Options2 _character = Options2.o1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
                        'Question 2',
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Have you experienced any of these symptoms in last 14 days?',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Trouble breathing',
                      style: TextStyle(color: Colors.white),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isSelected,
                    onChanged: (bool value) {
                      setState(() {
                        _isSelected = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Persistent pain or pressure in the chest',
                      style: TextStyle(color: Colors.white),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isSelected1,
                    onChanged: (bool value) {
                      setState(() {
                        _isSelected1 = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      'New Confusion',
                      style: TextStyle(color: Colors.white),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isSelected2,
                    onChanged: (bool value) {
                      setState(() {
                        _isSelected2 = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Insomnia',
                      style: TextStyle(color: Colors.white),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isSelected3,
                    onChanged: (bool value) {
                      setState(() {
                        _isSelected3 = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Bluish lips or face',
                      style: TextStyle(color: Colors.white),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isSelected4,
                    onChanged: (bool value) {
                      setState(() {
                        _isSelected4 = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Fever or chills',
                      style: TextStyle(color: Colors.white),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isSelected6,
                    onChanged: (bool value) {
                      setState(() {
                        _isSelected6 = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Cough',
                      style: TextStyle(color: Colors.white),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isSelected7,
                    onChanged: (bool value) {
                      setState(() {
                        _isSelected7 = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Shortness of breath or difficulty breathing',
                      style: TextStyle(color: Colors.white),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isSelected8,
                    onChanged: (bool value) {
                      setState(() {
                        _isSelected8 = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Nausea or vomiting',
                      style: TextStyle(color: Colors.white),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isSelected9,
                    onChanged: (bool value) {
                      setState(() {
                        _isSelected9 = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      'No',
                      style: TextStyle(color: Colors.white),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isSelected5,
                    onChanged: (bool value) {
                      setState(() {
                        _isSelected5 = value;
                      });
                    },
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
