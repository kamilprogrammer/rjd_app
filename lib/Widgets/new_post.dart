import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:rjd_app/Screens/AccountScreen.dart';

class New_Post extends StatefulWidget {
  final String Title;
  final String Kind;
  final String user_id;
  final String place;
  final String other;

  const New_Post({
    super.key,
    required this.Title,
    required this.Kind,
    required this.user_id,
    required this.place,
    required this.other,
  });

  @override
  State<New_Post> createState() => _New_PostState();
}

class _New_PostState extends State<New_Post> {
  Future delete() async {
    final uri = Uri.parse('http://127.0.0.1:8000/api/post/$title');
    final response = await http.get(uri);
    final id = jsonDecode(response.body)['id'];
    print(id);

    //Deleting proccess
    final uri2 = Uri.parse('http://127.0.0.1:8000/api/post/delete/$id');
    final response2 = await http.get(uri2);
  }

  String title = '';
  String kind = '';
  String place = '';
  String user_id = '';
  String other = '';
  //HI
  String name = '';
  String phone = '';

  Future copy() async {
    //Getting the id of the user proccess
    final uri = Uri.parse('http://127.0.0.1:8000/api/post/$title');
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

  @override
  void initState() {
    title = widget.Title;
    kind = widget.Kind;
    place = widget.place;
    other = widget.other;
    user_id = widget.user_id;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            spacing: 4,
            padding: EdgeInsets.all(10),
            onPressed: (context) => {delete()},
            backgroundColor: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            icon: Icons.delete_outline_rounded,
            foregroundColor: Colors.red,
            label: "Delete",
          ),
        ],
      ),
      startActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            onPressed: (context) => {
              copy().then((value) =>
                  {print(phone), Clipboard.setData(ClipboardData(text: phone))})
            },
            backgroundColor: Colors.transparent,
            icon: Icons.copy_rounded,
            label: "Phone Number",
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.only(right: 10, top: 6, bottom: 6),
        width: MediaQuery.of(context).size.width,
        height: 110,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: [
                          Text(
                            title.toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Janna LT',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        kind.toString(),
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 14,
                          fontFamily: 'Janna LT',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            place.toString(),
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
      ),
    );
  }
}
