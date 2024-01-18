import 'package:flutter/material.dart';
import 'package:rjd_app/Screens/AccountScreen.dart';
import 'package:rjd_app/Screens/HomeScreen.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController name_controller = TextEditingController(
    text: 'kamel',
  );
  TextEditingController company_controller =
      TextEditingController(text: 'Rj-Data');
  TextEditingController phone_controller =
      TextEditingController(text: '0991971733');
  TextEditingController pass_controller = TextEditingController(
    text: 'rifai',
  );
  Future fetch(
      String name, String password, String company, String phone) async {
    Map<String, dynamic> request = {
      'username': name,
      'password': password,
      'phone': phone,
      "company": company
    };

    var re_request = jsonEncode(request);

    final uri = Uri.http('127.0.0.1:8000', '/api/register');
    final response = await http.post(uri, body: re_request, headers: {
      "Access-Control-Allow-Origin": "*",
      'Accept': '*/*',
      'Content-type': 'application/json',
    });

    if (response.statusCode == 201) {
      Map<String, dynamic> map = json.decode(response.body);
      Map<String, dynamic> data = map["user_data"];
      print(data["username"]);

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AccountScreen(
                    username: data['username'],
                  )));

      return json.decode(response.body);
    } else {
      return response.body;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 80),
                      width: 212.18,
                      height: 250,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 98.05,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..translate(0.0, 0.0)
                                ..rotateZ(-0.56),
                              child: Container(
                                width: 184,
                                height: 106,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF91B3AB),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 15,
                            top: 94,
                            child: Container(
                              width: 182,
                              height: 182,
                              decoration: ShapeDecoration(
                                color: Color(0xFFA0E5D9),
                                shape: StarBorder.polygon(sides: 3),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Text(
                      'Logging In',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: 'Janna LT',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Text(
                      'Enter your details to login',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5299999713897705),
                        fontSize: 16,
                        fontFamily: 'Janna LT',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 12,
                          offset: Offset(-10, 14),
                          spreadRadius: 4,
                        )
                      ],
                    ),
                    width: MediaQuery.of(context).size.width - 100,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6499999761581421),
                        fontSize: 16,
                        fontFamily: 'Janna LT',
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.name,
                      controller: name_controller,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        prefixIconColor:
                            Colors.black.withOpacity(0.6499999761581421),
                        hintText: 'Username',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.6499999761581421),
                          fontSize: 16,
                          fontFamily: 'Janna LT',
                          fontWeight: FontWeight.w700,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 12,
                          offset: Offset(-10, 14),
                          spreadRadius: 4,
                        )
                      ],
                    ),
                    width: MediaQuery.of(context).size.width - 100,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6499999761581421),
                        fontSize: 16,
                        fontFamily: 'Janna LT',
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.name,
                      controller: company_controller,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.work_outline_rounded),
                        prefixIconColor:
                            Colors.black.withOpacity(0.6499999761581421),
                        hintText: 'Company name',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.6499999761581421),
                          fontSize: 16,
                          fontFamily: 'Janna LT',
                          fontWeight: FontWeight.w700,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 12,
                          offset: Offset(-10, 14),
                          spreadRadius: 4,
                        )
                      ],
                    ),
                    width: MediaQuery.of(context).size.width - 100,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6499999761581421),
                        fontSize: 16,
                        fontFamily: 'Janna LT',
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.name,
                      controller: phone_controller,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_iphone_rounded),
                        prefixIconColor:
                            Colors.black.withOpacity(0.6499999761581421),
                        hintText: 'Phone',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.6499999761581421),
                          fontSize: 16,
                          fontFamily: 'Janna LT',
                          fontWeight: FontWeight.w700,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 12,
                          offset: Offset(-10, 14),
                          spreadRadius: 4,
                        )
                      ],
                    ),
                    width: MediaQuery.of(context).size.width - 100,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6499999761581421),
                        fontSize: 16,
                        fontFamily: 'Janna LT',
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.name,
                      controller: pass_controller,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        prefixIconColor:
                            Colors.black.withOpacity(0.6499999761581421),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.6499999761581421),
                          fontSize: 16,
                          fontFamily: 'Janna LT',
                          fontWeight: FontWeight.w700,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {
                          fetch(name_controller.text, pass_controller.text,
                              company_controller.text, phone_controller.text);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Access The App ➡️',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Janna LT',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      width: 180,
                      height: 50,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.99, 0.13),
                          end: Alignment(-0.99, -0.13),
                          colors: [
                            Color(0xFF88F0FF),
                            Color(0xFF79ECFB),
                            Color(0xFF50DEF2),
                            Color(0xFF2DCEE4),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Text(
                      'Terms  -  Conditions',
                      style: TextStyle(
                        color: Color.fromARGB(255, 237, 15, 15)
                            .withOpacity(0.5299999713897705),
                        fontSize: 16,
                        fontFamily: 'Janna LT',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
