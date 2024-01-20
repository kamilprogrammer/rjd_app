import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:rjd_app/Screens/About.dart';
import 'package:rjd_app/Screens/VerifyScreen.dart';
import 'package:rjd_app/Widgets/AppBar.dart';
import 'package:flutter/services.dart';
import 'package:rjd_app/Widgets/Drawer.dart';
import 'package:http/http.dart' as http;
import 'package:rjd_app/Widgets/new_post.dart';
import 'package:rjd_app/Widgets/new_user.dart';
import 'package:rjd_app/Widgets/user.dart';
import 'package:rjd_app/Widgets/user_1.dart';

class Admin_Reports extends StatefulWidget {
  const Admin_Reports({super.key});

  @override
  State<Admin_Reports> createState() => _Admin_ReportsState();
}

class _Admin_ReportsState extends State<Admin_Reports> {
  List _reports = [];
  List reports_ = [];
  String name = '';
  String phone = '';
  Future copy() async {
    //Getting the id of the user proccess
    final uri = Uri.parse('http://127.0.0.1:8000/api/post/$Title');
    final response = await http.get(uri);
    final id = jsonDecode(response.body)['user_id'];
    print(id);

    // Deleting proccess
    final uri1 = Uri.parse('http://127.0.0.1:8000/api/user_id/$id');
    final response1 = await http.get(uri1);
    print(response1.body);
    final user_name = jsonDecode(response1.body)['username'];
    final phone_number = jsonDecode(response1.body)['phone'];

    setState(() {
      name = user_name;
      phone = phone_number;
    });
    print(name);
  }

  Future reports() async {
    final uri = Uri.parse('http://127.0.0.1:8000/api/posts');
    final response = await http.post(uri);
    final response1 = response.body;
    print(response1);

    var reports = jsonDecode(response1);
    setState(() {
      _reports = reports;
      reports_ = _reports;
    });

    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              reports().then((value) => {
                    setState(() {
                      reports_ = _reports;
                    })
                  });
            },
            child: Icon(Icons.replay)),
        drawer: MainDrawer(),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 1200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.21, 0.98),
                end: Alignment(-0.21, -0.98),
                colors: [
                  Color(0xFF17161C),
                  Color(0xFF323751),
                  Color.fromARGB(148, 57, 73, 161),
                  Color.fromARGB(44, 0, 38, 255)
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MainAppBar(),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'List of Reports',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Janna LT',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Color.fromARGB(0, 153, 115, 0),
                    width: MediaQuery.of(context).size.width - 110,
                    height: reports_.length * 140,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 40,
                      ),
                      itemCount: reports_.length.toInt(),
                      itemBuilder: (context, index) {
                        final reports_ = _reports;

                        return New_Post(
                          Title: reports_[index]['Title'].toString(),
                          Kind: reports_[index]['Kind'].toString(),
                          place: reports_[index]['place'].toString(),
                          other: reports_[index]['other'].toString(),
                          user_id: reports_[index]['user_id'].toString(),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 60,
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
