import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question3 extends StatefulWidget {
  @override
  _Question3State createState() => _Question3State();
}

enum Options3 { o1, o2, o3, o4, o5, o6, o7, o8, o9, o10 }

class _Question3State extends State<Question3> {
  Options3 _character = Options3.o1;
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text('Have you been tested for COVID in the last 14 days?'),
          ListTile(
            title: const Text('Fever or chills'),
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
            title: const Text('Cough'),
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
            title: const Text('Shortness of breath or difficulty breathing'),
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
            title: const Text('Fatigue'),
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
            title: const Text('Muscle or body aches'),
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
            title: const Text('Headache'),
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
            title: const Text('New loss of taste or smell'),
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
            title: const Text('Sore Throat'),
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
            title: const Text('Congestion or runny nose'),
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
            title: const Text('Nausea or vomiting'),
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
        ],
      ),
    );
  }
}
