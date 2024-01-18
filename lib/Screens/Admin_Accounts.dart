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
import 'package:rjd_app/Widgets/new_user.dart';
import 'package:rjd_app/Widgets/user.dart';
import 'package:rjd_app/Widgets/user_1.dart';

class Admin_Accounts extends StatefulWidget {
  const Admin_Accounts({super.key});

  @override
  State<Admin_Accounts> createState() => _Admin_AccountsState();
}

class _Admin_AccountsState extends State<Admin_Accounts> {
  List _users = [];
  List users_ = [];

  Future users() async {
    final uri = Uri.parse('http://127.0.0.1:8000/api/users');
    final response = await http.post(uri);
    final response1 = response.body;
    print(response1);
    var users = jsonDecode(response1);
    setState(() {
      _users = users;
      users_ = _users;
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
              users().then((value) => {
                    setState(() {
                      users_ = _users;
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
                        'List of Users',
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
                    height: _users.length * 110,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 40,
                      ),
                      itemCount: users_.length.toInt(),
                      itemBuilder: (context, index) {
                        final users_ = _users;
                        final _index = index;

                        return Slidable(
                          endActionPane: ActionPane(
                            motion: const StretchMotion(),
                            children: [
                              SlidableAction(
                                onPressed: (context) => {
                                  Clipboard.setData(ClipboardData(
                                      text: _users[index]['phone']))
                                },
                                backgroundColor: Colors.transparent,
                                icon: Icons.phone_callback,
                                label: "Phone Number",
                              )
                            ],
                          ),
                          startActionPane: ActionPane(
                            motion: const StretchMotion(),
                            children: [
                              SlidableAction(
                                onPressed: (context) => {
                                  FlutterPhoneDirectCaller.callNumber(
                                      _users[index]['phone'])
                                },
                                backgroundColor: Colors.transparent,
                                icon: Icons.phone_callback,
                                label: "Make a Call",
                              )
                            ],
                          ),
                          child: New_User(
                            name: users_[index]['username'].toString(),
                            company_name: users_[index]['company'].toString(),
                            phone: users_[index]['phone'].toString(),
                          ),
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
