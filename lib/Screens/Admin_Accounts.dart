import 'package:flutter/material.dart';
import 'package:rjd_app/Screens/About.dart';
import 'package:rjd_app/Screens/Starter.dart';
import 'package:rjd_app/Screens/VerifyScreen.dart';

class Admin_Accounts extends StatefulWidget {
  const Admin_Accounts({super.key});

  @override
  State<Admin_Accounts> createState() => _Admin_AccountsState();
}

class _Admin_AccountsState extends State<Admin_Accounts> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  Color.fromARGB(148, 57, 73, 161),
                  Color.fromARGB(44, 0, 38, 255)
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    width: MediaQuery.of(context).size.width - 60,
                    height: 48,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 14,
                          offset: Offset(0, 10),
                          spreadRadius: 6,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VerifyScreen()));
                          },
                          child: Container(
                            width: 16,
                            height: 16,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 5.33,
                                    height: 5.33,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF090909),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10.67,
                                  top: 10.67,
                                  child: Container(
                                    width: 5.33,
                                    height: 5.33,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF090909),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 10.67,
                                  child: Container(
                                    width: 5.33,
                                    height: 5.33,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF090909),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10.67,
                                  top: 0,
                                  child: Container(
                                    width: 5.33,
                                    height: 5.33,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF090909),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          'RJ-Data',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Janna LT',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => About()));
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/logo.jpg"),
                                fit: BoxFit.cover,
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'المستخدمون',
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
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(right: 10, top: 6, bottom: 6),
                  width: 310,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text(
                            'كامل عبد الرزاق الرفاعي',
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
                              'ار جي داتا للشبكات',
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(right: 10, top: 6, bottom: 6),
                  width: 310,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text(
                            'كامل عبد الرزاق الرفاعي',
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
                              'ار جي داتا للشبكات',
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(right: 10, top: 6, bottom: 6),
                  width: 310,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text(
                            'كامل عبد الرزاق الرفاعي',
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
                              'ار جي داتا للشبكات',
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(right: 10, top: 6, bottom: 6),
                  width: 310,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text(
                            'كامل عبد الرزاق الرفاعي',
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
                              'ار جي داتا للشبكات',
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
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'المستجدون',
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
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(right: 10, top: 6, bottom: 6),
                  width: 310,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 60,
                              height: 47,
                              child: Icon(
                                Icons.done_all,
                                color: Colors.blue,
                                size: 26.0,
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
                      Column(
                        children: [
                          Text(
                            'كامل عبد الرزاق الرفاعي',
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
                              'ار جي داتا للشبكات',
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(right: 10, top: 6, bottom: 6),
                  width: 310,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 60,
                          height: 47,
                          child: Icon(
                            Icons.done_all,
                            color: Colors.blue,
                            size: 26.0,
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
                      Column(
                        children: [
                          Text(
                            'كامل عبد الرزاق الرفاعي',
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
                              'ار جي داتا للشبكات',
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(right: 10, top: 6, bottom: 6),
                  width: 310,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 60,
                          height: 47,
                          child: Icon(
                            Icons.done_all,
                            color: Colors.blue,
                            size: 26.0,
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
                      Column(
                        children: [
                          Text(
                            'كامل عبد الرزاق الرفاعي',
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
                              'ار جي داتا للشبكات',
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(right: 10, top: 6, bottom: 6),
                  width: 310,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 60,
                          height: 47,
                          child: Icon(
                            Icons.done_all,
                            color: Colors.blue,
                            size: 26.0,
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
                      Column(
                        children: [
                          Text(
                            'كامل عبد الرزاق الرفاعي',
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
                              'ار جي داتا للشبكات',
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
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
