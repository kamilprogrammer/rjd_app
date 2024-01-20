import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rjd_app/Screens/AccountScreen.dart';
import 'package:rjd_app/Widgets/AppBar.dart';
import 'package:rjd_app/Widgets/Drawer.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController title_controller =
      TextEditingController(text: 'This is a big proplem please help!');
  TextEditingController kind_controller =
      TextEditingController(text: 'Electronical with Albir servers');
  TextEditingController place_controller =
      TextEditingController(text: 'Homs , Albir 3');
  TextEditingController others_controller =
      TextEditingController(text: 'Nothing ');
  String username1 = '';
  void fetch(String title, String kind, String others, String place) async {
    SharedPreferences sharedpreferences = await SharedPreferences.getInstance();
    final username = sharedpreferences.getString("username");
    Map<String, dynamic> request = {
      'Title': title,
      'Kind': kind,
      'place': place,
      "user_id": sharedpreferences.getString("id"),
      "Other": others,
    };
    var re_request = jsonEncode(request);

    final uri = Uri.http('127.0.0.1:8000', '/api/add_post');
    final response = await http.post(uri, body: re_request, headers: {
      "Access-Control-Allow-Origin": "*",
      'Accept': '*/*',
      'Content-type': 'application/json',
    });

    if (response.statusCode == 201) {
      setState(() {
        username1 = username.toString();
      });
      Map<String, dynamic> map = json.decode(response.body);
      return json.decode(response.body);
    } else {
      throw Exception('err');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          drawer: MainDrawer(),
          body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.21, 0.98),
                  end: Alignment(-0.21, -0.98),
                  colors: [
                    Color(0xFF17161C),
                    Color(0xFF323751),
                    Color(0x6F3949A1),
                    Color(0x000026FF)
                  ],
                ),
              ),
              child: Column(
                children: [
                  MainAppBar(),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Report a Problem',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Janna LT',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Text(
                              'Title of The Proplem:',
                              style: TextStyle(
                                color:
                                    Colors.white.withOpacity(0.800000011920929),
                                fontSize: 16,
                                fontFamily: 'Janna LT',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 100,
                            height: 49,
                            decoration: ShapeDecoration(
                              color: Color(0xFF717AA4),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 23,
                                  offset: Offset(0, 12),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: TextField(
                              controller: title_controller,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.6499999761581421),
                                fontSize: 16,
                                fontFamily: 'Janna LT',
                                fontWeight: FontWeight.w700,
                              ),
                              decoration: InputDecoration(
                                  hintText: 'Write Here......',
                                  contentPadding: EdgeInsets.only(left: 20),
                                  border: InputBorder.none,
                                  fillColor: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Text(
                              'The Kind of the Proplem:',
                              style: TextStyle(
                                color:
                                    Colors.white.withOpacity(0.800000011920929),
                                fontSize: 16,
                                fontFamily: 'Janna LT',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 100,
                            height: 49,
                            decoration: ShapeDecoration(
                              color: Color(0xFF717AA4),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 23,
                                  offset: Offset(0, 12),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: TextField(
                              controller: kind_controller,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.6499999761581421),
                                fontSize: 16,
                                fontFamily: 'Janna LT',
                                fontWeight: FontWeight.w700,
                              ),
                              decoration: InputDecoration(
                                  hintText: 'Write Here......',
                                  contentPadding: EdgeInsets.only(left: 20),
                                  border: InputBorder.none,
                                  fillColor: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Text(
                              'The Place of the Proplem',
                              style: TextStyle(
                                color:
                                    Colors.white.withOpacity(0.800000011920929),
                                fontSize: 16,
                                fontFamily: 'Janna LT',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 100,
                            height: 49,
                            decoration: ShapeDecoration(
                              color: Color(0xFF717AA4),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 23,
                                  offset: Offset(0, 12),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: TextField(
                              controller: place_controller,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.6499999761581421),
                                fontSize: 16,
                                fontFamily: 'Janna LT',
                                fontWeight: FontWeight.w700,
                              ),
                              decoration: InputDecoration(
                                  hintText: 'Write Here......',
                                  contentPadding: EdgeInsets.only(left: 20),
                                  border: InputBorder.none,
                                  fillColor: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Text(
                              'Additional details about the Proplem:',
                              style: TextStyle(
                                color:
                                    Colors.white.withOpacity(0.800000011920929),
                                fontSize: 16,
                                fontFamily: 'Janna LT',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 100,
                            height: 120,
                            decoration: ShapeDecoration(
                              color: Color(0xFF717AA4),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 23,
                                  offset: Offset(0, 12),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: TextField(
                              controller: others_controller,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.6499999761581421),
                                fontSize: 16,
                                fontFamily: 'Janna LT',
                                fontWeight: FontWeight.w700,
                              ),
                              maxLines: 10,
                              decoration: InputDecoration(
                                  hintText: 'Write Here......',
                                  contentPadding:
                                      EdgeInsets.only(left: 20, top: 12),
                                  border: InputBorder.none,
                                  fillColor: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        width: 227,
                        height: 64,
                        child: TextButton(
                          onPressed: () {
                            fetch(title_controller.text, kind_controller.text,
                                others_controller.text, place_controller.text);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AccountScreen()));
                          },
                          child: Text(
                            'Report',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Janna LT',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(-1.00, -0.07),
                            end: Alignment(1, 0.07),
                            colors: [
                              Color(0xFF00D1FF),
                              Color(0xFF5EE2FF),
                              Color(0xA557E0FF)
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 17,
                              offset: Offset(0, 20),
                              spreadRadius: -4,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
