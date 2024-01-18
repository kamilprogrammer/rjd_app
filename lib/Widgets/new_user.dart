import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:rjd_app/Screens/AccountScreen.dart';

class New_User extends StatefulWidget {
  final String name;
  final String company_name;
  final String phone;

  const New_User({
    super.key,
    required this.name,
    required this.company_name,
    required this.phone,
  });

  @override
  State<New_User> createState() => _New_UserState();
}

class _New_UserState extends State<New_User> {
  Future delete() async {
    //Getting the id of the user proccess
    final uri = Uri.parse('http://127.0.0.1:8000/api/user/$name');
    final response = await http.get(uri);
    final id = jsonDecode(response.body)['id'];

    // Deleting proccess
    final uri1 = Uri.parse('http://127.0.0.1:8000/api/user/delete/$id');
    final response1 = await http.get(uri1);

    print(response1.body);
  }

  String name = '';
  String company_name = '';
  String phone = '';
  @override
  void initState() {
    name = widget.name;
    company_name = widget.company_name;
    phone = widget.phone;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, top: 6, bottom: 6),
      width: MediaQuery.of(context).size.width - 80,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo.jpg"),
                    fit: BoxFit.cover,
                  ),
                  shape: OvalBorder(),
                ),
              ),
              Container(
                height: 10,
                width: 20,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        Text(
                          name.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Janna LT',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          " | ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Janna LT',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          company_name.toString(),
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontSize: 14,
                            fontFamily: 'Janna LT',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          phone.toString(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontSize: 14,
                            fontFamily: 'Janna LT',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          height: 10,
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              delete();
            },
            child: Container(
              margin: EdgeInsets.only(left: 10),
              width: 50,
              height: 50,
              child: Icon(
                Icons.delete_forever_rounded,
                color: Colors.red,
                size: 24.0,
              ),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 10,
                    offset: Offset(-9, 14),
                    spreadRadius: 9,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 19,
            offset: Offset(-10, 17),
            spreadRadius: 6,
          )
        ],
      ),
    );
  }
}
