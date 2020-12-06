import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question1 extends StatefulWidget {
  @override
  _Question1State createState() => _Question1State();
}

enum Options1 { o1, o2, o3, o4, o5 }

class _Question1State extends State<Question1> {
  Options1 _character = Options1.o1;
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text('Have you been tested for COVID in the last 14 days?'),
          ListTile(
            title: const Text('Yes, tested positive'),
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
            title: const Text('Yes, tested positive but later tested negative'),
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
            title: const Text('Yes, tested negative'),
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
            title: const Text('Yes, results have not come in yet'),
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
            title: const Text('No'),
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
        ],
      ),
    );
  }
}
