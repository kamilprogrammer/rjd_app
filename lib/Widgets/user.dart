import 'package:flutter/material.dart';

class User extends StatefulWidget {
  String name;
  String company_name;
  User(
    this.name,
    this.company_name,
  );

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  String name = '';
  String company_name = '';

  @override
  void initState() {
    name = widget.name.toString();
    company_name = widget.company_name.toString();

    super.initState();
  }

  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 200),
      child: Container(
        padding: EdgeInsets.only(right: 10, top: 6, bottom: 6),
        width: 310,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
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
                Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Text(
                    company_name.toString(),
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 14,
                      fontFamily: 'Janna LT',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
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
            )
          ],
        ),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
          shadows: [
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
