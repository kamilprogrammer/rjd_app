import 'package:flutter/material.dart';
import 'package:rjd_app/Screens/Starter.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 1000,
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
                                    builder: (context) => Starter()));
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 80),
                      width: 170,
                      height: 170,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo.jpg'),
                          fit: BoxFit.cover,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Rjdata-App',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7599999904632568),
                    fontSize: 18,
                    fontFamily: 'Janna LT',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                Text(
                  'version: 1.0.0',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Janna LT',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'تواصل معنا',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Container(
                          margin: EdgeInsets.all(16),
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/whatsapp.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.22, 0.98),
                            end: Alignment(-0.22, -0.98),
                            colors: [Color(0xFF393D54), Color(0xFF4B5275)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 22,
                              offset: Offset(0, 28),
                              spreadRadius: 3,
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Container(
                          margin: EdgeInsets.all(16),
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/phone_1.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.22, 0.98),
                            end: Alignment(-0.22, -0.98),
                            colors: [Color(0xFF393D54), Color(0xFF4B5275)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 22,
                              offset: Offset(0, 28),
                              spreadRadius: 3,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Container(
                          margin: EdgeInsets.all(16),
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/telegram.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.22, 0.98),
                            end: Alignment(-0.22, -0.98),
                            colors: [Color(0xFF393D54), Color(0xFF4B5275)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 22,
                              offset: Offset(0, 28),
                              spreadRadius: 3,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
