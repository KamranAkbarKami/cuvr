//ignore_for_file: prefer_const_constructors , , prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ScreenSeventh extends StatefulWidget {
  const ScreenSeventh({Key? key}) : super(key: key);

  @override
  State<ScreenSeventh> createState() => _ScreenSeventhState();
}

class _ScreenSeventhState extends State<ScreenSeventh> {
  String dropdownValue = 'Policy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Claim Management",
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
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(color: Colors.transparent),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(children: [
                SizedBox(
                  height: 30,
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
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        TextFormField(
                          autofocus: false,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.date_range),
                            labelText: 'Date',
                            labelStyle:
                                TextStyle(fontSize: 15.0, color: Colors.grey),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        DropdownButtonFormField<String>(
                          itemHeight: 78.0,
                          value: dropdownValue,
                          icon: Icon(Icons.arrow_drop_down_sharp),
                          isExpanded: true,
                          elevation: 16,
                          hint: Text("Select Policy"),
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.select_all),
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>[
                            'Policy',
                            'Policy 2',
                            'Policy 3',
                            'Policy 4'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        TextFormField(
                          autofocus: false,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_on),
                            labelText: 'Location',
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
                            prefixIcon: Icon(Icons.merge_type),
                            labelText: 'Type of Incident',
                            labelStyle:
                                TextStyle(fontSize: 15.0, color: Colors.grey),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              "Upload damage photos",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(
                              child: IconButton(
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          )
                        ])
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: 180,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    child:
                        Text('SUBMIT CLAIM', style: TextStyle(fontSize: 15.0)),
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
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
