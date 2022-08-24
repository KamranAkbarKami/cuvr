//ignore_for_file: prefer_const_constructors ,prefer_const_literals_to_create_immutables
import 'package:cuvr/pages/screen_four.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xFFffffff),
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFffffff),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
              child: Column(
                children: [
                  Text("CUVR",
                      style: TextStyle(
                        color: Color(0xFF6485c3),
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        letterSpacing: 1.5,
                      )),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Getting Started",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25)),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Be Part of our community today",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18)),
                  ),
                  SizedBox(height: 20),
                  Row(children: [
                    Text("Sign Up",
                        style: TextStyle(
                          fontSize: 30,
                        )),
                  ]),
                  SizedBox(height: 20),
                  TextFormField(
                    autofocus: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Name',
                      labelStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    autofocus: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
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
                  SizedBox(height: 30),
                  Center(
                    child: Row(children: [
                      Checkbox(
                        checkColor: Colors.white,
                        //fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text("Agree to the "),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            "terms",
                            style: TextStyle(
                              color: Color(0xFF6485c3),
                              decoration: TextDecoration.underline,
                            ),
                          )),
                      Text(" and "),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            "conditions",
                            style: TextStyle(
                              color: Color(0xFF6485c3),
                              decoration: TextDecoration.underline,
                            ),
                          )),
                    ]),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 210,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreenFour()));
                      },
                      child: Text('CREATE ACCOUNT',
                          style: TextStyle(fontSize: 15.0)),
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
                  Row(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.27,
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                          )),
                      Text(" or sign up with ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.27,
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                          )),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: StadiumBorder(),
                          fixedSize: Size(130, 40),
                          side: BorderSide(width: 1, color: Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScreenFour()));
                        },
                        child: Row(children: [
                          Image.asset(
                            "assets/images/google_logo.png",
                            height: 22,
                          ),
                          Text(
                            ' Google',
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.grey),
                          ),
                        ]),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: StadiumBorder(),
                          fixedSize: Size(130, 40),
                          side: BorderSide(width: 1, color: Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScreenFour()));
                        },
                        child: Row(children: [
                          Icon(
                            Icons.facebook,
                            size: 27,
                          ),
                          Text(
                            ' Facebook',
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.grey),
                          )
                        ]),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
