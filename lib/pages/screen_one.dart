//ignore_for_file: prefer_const_constructors ,  prefer_const_literals_to_create_immutables
import 'package:cuvr/pages/screen_three.dart';
import 'package:cuvr/pages/screen_two.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFffffff),
            ),
            child: Column(
              children: [
                SizedBox(height: 30),
                Text("CUVR",
                    style: TextStyle(
                      color: Color(0xFF6485c3),
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                      letterSpacing: 1.5,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(". LIMITED LIABILITY COMPANY .",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    )),
                SizedBox(
                  height: 70,
                ),
                Image.asset("assets/images/background.png"),
                SizedBox(
                  height: 90,
                ),
                SizedBox(
                    width: 210,
                    height: 45,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF6485c3),
                          elevation: 20,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScreenTwo()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Get Started",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Center(
                                    child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color(0xFF6485c3),
                                )))
                          ],
                        ))),
                SizedBox(
                  height: 90,
                  width: 270,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? ",
                          style: TextStyle(fontSize: 18)),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScreenThree()));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Color(0xFF6485c3),
                                decoration: TextDecoration.underline,
                                fontSize: 18),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
