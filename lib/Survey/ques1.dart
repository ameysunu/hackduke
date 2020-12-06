import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackduke/Survey/ques2.dart';
import 'package:hexcolor/hexcolor.dart';

class Question1 extends StatefulWidget {
  @override
  _Question1State createState() => _Question1State();
}

enum Options1 { o1, o2, o3, o4, o5 }

class _Question1State extends State<Question1> {
  Options1 _character = Options1.o1;
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
                    // leading: Image.asset("assets/images/math.png"),
                    title: Text(
                      'Question 1',
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
                    'Have you been tested for COVID in the last 14 days?',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Yes, tested positive',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                    value: Options1.o1,
                    groupValue: _character,
                    onChanged: (Options1 value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Yes, tested positive but later tested negative',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                    value: Options1.o2,
                    groupValue: _character,
                    onChanged: (Options1 value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Yes, tested negative',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                    value: Options1.o3,
                    groupValue: _character,
                    onChanged: (Options1 value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Yes, results have not come in yet',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                    value: Options1.o4,
                    groupValue: _character,
                    onChanged: (Options1 value) {
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
                    value: Options1.o5,
                    groupValue: _character,
                    onChanged: (Options1 value) {
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
                        MaterialPageRoute(builder: (context) => Question2()),
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
