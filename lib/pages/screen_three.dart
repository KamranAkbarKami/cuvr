//ignore_for_file: prefer_const_constructors , prefer_const_literals_to_create_immutables
import 'package:cuvr/pages/screen_four.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFffffff),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFffffff),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
              //padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  Text("CUVR",
                      style: TextStyle(
                        color: Color(0xFF6485c3),
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        letterSpacing: 1.5,
                      )),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Let's sign you in",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25)),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Welcome back you've been missed !",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18)),
                  ),
                  SizedBox(height: 60),
                  Row(children: [
                    Text("Sign In",
                        style: TextStyle(
                          fontSize: 30,
                        )),
                  ]),
                  SizedBox(height: 20),
                  TextFormField(
                    autofocus: false,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      labelStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    autofocus: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.vpn_key),
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  SizedBox(
                    width: 180,
                    height: 45,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreenFour()));
                      },
                      icon: Icon(Icons.login),
                      label: Text('SIGN IN', style: TextStyle(fontSize: 15.0)),
                      style: ElevatedButton.styleFrom(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        primary: Color(0xFF6485c3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
