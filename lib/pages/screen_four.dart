//ignore_for_file: prefer_const_constructors , , prefer_const_literals_to_create_immutables
import 'package:cuvr/pages/screen_five.dart';
import 'package:cuvr/pages/screen_six.dart';
import 'package:cuvr/pages/screen_seven.dart';
import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({Key? key}) : super(key: key);

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  String userName = "Kamran";
  int notificationNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CUVR",
            style: TextStyle(
              color: Color(0xFF6485c3),
              fontWeight: FontWeight.bold,
              fontSize: 35,
              letterSpacing: 1.5,
            )),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.grey),
        centerTitle: true,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          Padding(
              padding: EdgeInsets.all(12.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/user.png"),
                backgroundColor: Colors.transparent,
              )),
          IconButton(
              onPressed: () {Navigator.pop(context);},
              icon: Icon(
                Icons.logout,
                color: Color(0xFF6485c3),
              )),
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Text("Hello, " + userName,
                      style: TextStyle(
                        fontSize: 30,
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(children: [
                Text("Let's find the best insurance with us!",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ))
              ]),
              SizedBox(
                height: 40,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    color: Colors.grey,
                    width: 0.6,
                  ),
                ),
                elevation: 0,
                color: Colors.white,
                child: Column(children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScreenFive()));
                    },
                    leading: Icon(
                      Icons.calendar_month,
                      color: Color(0xFF6485c3),
                      size: 30,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Make an Appointment",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  Divider(color: Colors.grey),
                  ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ScreenSix()));
                    },
                    leading: Icon(
                      Icons.verified_outlined,
                      color: Color(0xFF6485c3),
                      size: 30,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Proof of Insurance",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  Divider(color: Colors.grey),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScreenSeventh()));
                    },
                    leading: Icon(
                      Icons.person_outline,
                      color: Color(0xFF6485c3),
                      size: 30,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Claim Management",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class ScreenSeven {}
