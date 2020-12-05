import 'package:flutter/material.dart';
import 'package:hackduke/user.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';
import 'login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#00000'),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: HexColor('#00000'),
        title: IconButton(
          icon: Icon(Icons.info_outline),
          onPressed: () async {
            const url = 'https://www.cdc.gov/coronavirus/2019-ncov/index.html';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              child: CircleAvatar(
                backgroundColor: Colors.black,
                backgroundImage: NetworkImage(imageUrl),
              ),
              onTap: () {
                _showDropdown(context);
              },
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Image.asset('images/home.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Where do you want to go?",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RaisedButton(
              color: HexColor('#A658B5'),
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Search for a location",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Roboto Medium",
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              onPressed: () {
                null;
              },
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Report your symptoms",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RaisedButton(
              color: HexColor('#FF7585'),
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Survey",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Roboto Medium",
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              onPressed: () {
                null;
              },
            ),
          ),
        ],
      ),
    );
  }
}

void _showDropdown(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: HexColor('#000000'),
          title: FlatButton(
            child: Text(
              "Account Page",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => User()),
              );
            },
          ),
          content: FlatButton(
            child: Text(
              "Sign out",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            onPressed: () {
              signOutGoogle();
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),
        );
      });
}
