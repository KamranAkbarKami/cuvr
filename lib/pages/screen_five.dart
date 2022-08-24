//ignore_for_file: prefer_const_constructors , prefer_const_literals_to_create_immutables, unnecessary_new, prefer_final_fields
import 'package:flutter/material.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({Key? key}) : super(key: key);

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  //String dropdownValue = 'Phone';
  String? _selected;
  List<Map> _myJson = [
    {"id": '1', "image": "assets/images/phone.png", "name": "Phone"},
    {
      "id": '2',
      "image": "assets/images/icons8-google-meet-48.png",
      "name": "Google Meet"
    },
    {"id": '3', "image": "assets/images/zoom_meet.png", "name": "Zoom Meeting"},
    {
      "id": '4',
      "image": "assets/images/microsoft-teams.png",
      "name": "Microsoft Teams"
    },
    {"id": '5', "image": "assets/images/skype.png", "name": "Skype"},
    {"id": '6', "image": "assets/images/webex.png", "name": "Webex"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Appointment Request",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.transparent),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("MON"),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: InkWell(
                                child: Center(child: Text("28")),
                                onTap: () {},
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text("TUE"),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: InkWell(
                                child: Center(child: Text("29")),
                                onTap: () {},
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text("WED"),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: InkWell(
                                child: Center(child: Text("30")),
                                onTap: () {},
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text("THU"),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: InkWell(
                                child: Center(child: Text("31")),
                                onTap: () {},
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text("FRI"),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: InkWell(
                                child: Center(child: Text("1")),
                                onTap: () {},
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text("SAT"),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: InkWell(
                                child: Center(child: Text("2")),
                                onTap: () {},
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text("MON"),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: InkWell(
                                child: Center(child: Text("3")),
                                onTap: () {},
                              ),
                            )
                          ],
                        ),
                      ]),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Time",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            //shape: StadiumBorder(),
                            fixedSize: Size(100, 35),
                            side: BorderSide(width: 1, color: Colors.black),
                          ),
                          onPressed: () {},
                          child: Text(
                            'MORNINGS',
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.black),
                          )),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            //shape: StadiumBorder(),
                            fixedSize: Size(100, 35),
                            side: BorderSide(width: 1, color: Colors.black),
                          ),
                          onPressed: () {},
                          child: Text(
                            'EVENING',
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.black),
                          )),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            //shape: StadiumBorder(),
                            fixedSize: Size(100, 35),
                            side: BorderSide(width: 1, color: Colors.black),
                          ),
                          onPressed: () {},
                          child: Text(
                            'NIGHT',
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.black),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Preferred method of contact",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        hint: new Text("Select"),
                        value: _selected,
                        itemHeight: 78.0,
                        elevation: 16,
                        style: TextStyle(color: Colors.black, fontSize: 17),
                        underline: Container(
                          height: 2,
                          color: Colors.blue,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selected = newValue;
                          });
                        },
                        items: _myJson.map((Map map) {
                          return new DropdownMenuItem<String>(
                            value: map["id"].toString(),
                            // value: _mySelection,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  map["image"],
                                  width: 25,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(map["name"])),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Your Details",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
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
                    child: Padding(
                      padding: EdgeInsets.all(13),
                      child: Column(
                        children: [
                          TextFormField(
                            autofocus: false,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'First Name',
                              labelStyle:
                                  TextStyle(fontSize: 15.0, color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                          TextFormField(
                            autofocus: false,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'Last Name',
                              labelStyle:
                                  TextStyle(fontSize: 15.0, color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                          TextFormField(
                            autofocus: false,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              labelText: 'Phone Number',
                              labelStyle:
                                  TextStyle(fontSize: 15.0, color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                          TextFormField(
                            autofocus: false,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              labelText: 'Email',
                              labelStyle:
                                  TextStyle(fontSize: 15.0, color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 210,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('BOOK APPOINTMENT',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
