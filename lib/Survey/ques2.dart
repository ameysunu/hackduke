import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question2 extends StatefulWidget {
  @override
  _Question2State createState() => _Question2State();
}

enum Options2 { o1, o2, o3, o4, o5, o6 }

class _Question2State extends State<Question2> {
  Options2 _character = Options2.o1;
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
          Text('Have you experienced any of these symptoms in last 14 days?'),
          ListTile(
            title: const Text('Yes, tested positive'),
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
            title: const Text('Yes, tested positive but later tested negative'),
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
            title: const Text('Yes, tested negative'),
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
            title: const Text('Yes, results have not come in yet'),
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
            title: const Text('No'),
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
        ],
      ),
    );
  }
}
