import 'package:flutter/material.dart';
import 'package:rjd_app/Screens/AccountScreen.dart';
import 'package:rjd_app/Widgets/AppBar.dart';
import 'package:rjd_app/Widgets/Drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
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
                        'الابلاغ عن مشكلة',
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
                            margin: EdgeInsets.only(right: 50),
                            child: Text(
                              'نوع المشكلة',
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
                        mainAxisAlignment: MainAxisAlignment.end,
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
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.6499999761581421),
                                fontSize: 16,
                                fontFamily: 'Janna LT',
                                fontWeight: FontWeight.w700,
                              ),
                              decoration: InputDecoration(
                                  hintText: '........اكتب هنا',
                                  contentPadding: EdgeInsets.only(right: 20),
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
                            margin: EdgeInsets.only(right: 50),
                            child: Text(
                              'نوع المشكلة',
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
                        mainAxisAlignment: MainAxisAlignment.end,
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
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.6499999761581421),
                                fontSize: 16,
                                fontFamily: 'Janna LT',
                                fontWeight: FontWeight.w700,
                              ),
                              decoration: InputDecoration(
                                  hintText: '........اكتب هنا',
                                  contentPadding: EdgeInsets.only(right: 20),
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
                            margin: EdgeInsets.only(right: 50),
                            child: Text(
                              'نوع المشكلة',
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
                        mainAxisAlignment: MainAxisAlignment.end,
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
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.6499999761581421),
                                fontSize: 16,
                                fontFamily: 'Janna LT',
                                fontWeight: FontWeight.w700,
                              ),
                              decoration: InputDecoration(
                                  hintText: '........اكتب هنا',
                                  contentPadding: EdgeInsets.only(right: 20),
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
                            margin: EdgeInsets.only(right: 50),
                            child: Text(
                              'ملاحظات اضافية',
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
                        mainAxisAlignment: MainAxisAlignment.end,
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
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.6499999761581421),
                                fontSize: 16,
                                fontFamily: 'Janna LT',
                                fontWeight: FontWeight.w700,
                              ),
                              maxLines: 10,
                              decoration: InputDecoration(
                                  hintText: '........اكتب هنا',
                                  contentPadding:
                                      EdgeInsets.only(right: 20, top: 8),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AccountScreen()));
                          },
                          child: Text(
                            'تقديم الطلب',
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
