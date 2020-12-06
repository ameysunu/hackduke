import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackduke/Survey/ques5.dart';
import 'package:hexcolor/hexcolor.dart';

class Question4 extends StatefulWidget {
  @override
  _Question4State createState() => _Question4State();
}

enum Options4 {
  o1,
  o2,
}

class _Question4State extends State<Question4> {
  Options4 _character = Options4.o1;
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
                        'Question 4',
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
                      'In last 14 days, have you come into contact with anyone with the symptoms of COVID-19?',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Symptons include: fever or chills, Cough, Shortness of breath r difficulty breathing, Fatigue, muscle or body ache, headcahe, new loss of taste or smell, sore throat, cogestions etc.',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Yes',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Radio(
                      value: Options4.o1,
                      groupValue: _character,
                      onChanged: (Options4 value) {
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
                      value: Options4.o2,
                      groupValue: _character,
                      onChanged: (Options4 value) {
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
                          MaterialPageRoute(builder: (context) => Question5()),
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
