import 'package:flutter/material.dart';
import 'package:rjd_app/Screens/Admin_Accounts.dart';
import 'package:rjd_app/Widgets/AppBar.dart';
import 'package:rjd_app/Widgets/Drawer.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  Color.fromARGB(148, 57, 73, 161),
                  Color.fromARGB(44, 0, 38, 255)
                ],
              ),
            ),
            child: Column(
              children: [
                MainAppBar(),
                SizedBox(
                  height: 140,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 60,
                      height: 705,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.16, 0.99),
                          end: Alignment(-0.16, -0.99),
                          colors: [
                            Color(0xFF17161C),
                            Color(0xFF323751),
                            Color(0x6F3949A1),
                            Color(0x000026FF)
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -100,
                      child: Container(
                        width: 227,
                        height: 233,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 227,
                                height: 227,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/logo.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 2,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                      color: Color(0x7F33DDE2),
                                    ),
                                    borderRadius: BorderRadius.circular(113.50),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x3F000000),
                                      blurRadius: 4,
                                      offset: Offset(0, 4),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 175,
                              top: 166,
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF50D890),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 134),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'كامل عبد الرزاق الرفاعي',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Janna LT',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 176),
                      child: Text(
                        'معلومات من انت؟',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Janna LT',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 204),
                      child: Text(
                        'اسم الشركة',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Janna LT',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 265),
                      width: 141,
                      height: 43,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(1.00, 0.08),
                          end: Alignment(-1, -0.08),
                          colors: [
                            Color(0xFFFF1212),
                            Color.fromARGB(202, 240, 74, 74),
                            Color(0xFFFF0000),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'تسجيل الخروج',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Janna LT',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 330),
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              'معلومات اضافية',
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
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 370),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 120,
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
                              maxLines: 8,
                              decoration: InputDecoration(
                                  hintText: '........اكتب هنا',
                                  contentPadding:
                                      EdgeInsets.only(right: 20, top: 10),
                                  border: InputBorder.none,
                                  fillColor: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 500),
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              'اسم الشركة',
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
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 535),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 120,
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
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 614),
                      width: 227,
                      height: 64,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Admin_Accounts()));
                        },
                        child: Text(
                          'تحديث البيانات',
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
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
