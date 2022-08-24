//ignore_for_file: prefer_const_constructors , prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class ScreenSix extends StatefulWidget {
  const ScreenSix({Key? key}) : super(key: key);

  @override
  State<ScreenSix> createState() => _ScreenSixState();
}

class _ScreenSixState extends State<ScreenSix> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Proof of Insurrance",
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
            padding: EdgeInsets.all(20),
            child: Card(
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    /*StateFarm Logo Line*/
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100,
                          width: 160,
                          //constraints: BoxConstraints.expand(),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/statefarm_logo_resized.png")),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.picture_as_pdf,
                                color: Color(0xFF6485c3),
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.share,
                                color: Color(0xFF6485c3),
                              ),
                              onPressed: () {},
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset("assets/images/insurrance_claim.jpg"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
