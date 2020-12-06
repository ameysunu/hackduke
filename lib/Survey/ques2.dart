import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackduke/Survey/ques3.dart';
import 'package:hexcolor/hexcolor.dart';

class Question2 extends StatefulWidget {
  @override
  _Question2State createState() => _Question2State();
}

enum Options2 { o1, o2, o3, o4, o5, o6 }

class _Question2State extends State<Question2> {
  Options2 _character = Options2.o1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
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
                ListTile(
                  title: const Text(
                    'Trouble breathing',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                    value: Options2.o1,
                    groupValue: _character,
                    onChanged: (Options2 value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Persistent pain or pressure in the chest',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                    value: Options2.o2,
                    groupValue: _character,
                    onChanged: (Options2 value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text(
                    'New confusion',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                    value: Options2.o3,
                    groupValue: _character,
                    onChanged: (Options2 value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Insomnia',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                    value: Options2.o4,
                    groupValue: _character,
                    onChanged: (Options2 value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Bluish lips or face',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                    value: Options2.o5,
                    groupValue: _character,
                    onChanged: (Options2 value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text(
                    'No',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                    value: Options2.o6,
                    groupValue: _character,
                    onChanged: (Options2 value) {
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
                            style: TextStyle(color: Colors.black, fontSize: 18),
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
                        MaterialPageRoute(builder: (context) => Question3()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
