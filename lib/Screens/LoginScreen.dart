import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LOginScreenState();
}

class _LOginScreenState extends State<LoginScreen> {
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
                          Positioned(
                            left: 130.18,
                            top: 866,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..translate(0.0, 0.0)
                                ..rotateZ(3.14),
                              child: Container(
                                width: 212.18,
                                height: 276,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: -98.05,
                                      child: Transform(
                                        transform: Matrix4.identity()
                                          ..translate(0.0, 0.0)
                                          ..rotateZ(2.58),
                                        child: Container(
                                          width: 184,
                                          height: 106,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF77C9DB),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: -15,
                                      top: -94,
                                      child: Transform(
                                        transform: Matrix4.identity()
                                          ..translate(0.0, 0.0)
                                          ..rotateZ(3.14),
                                        child: Container(
                                          width: 182,
                                          height: 182,
                                          decoration: ShapeDecoration(
                                            color: Color(0xCE90F8FF),
                                            shape: StarBorder.polygon(sides: 3),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
                    margin: EdgeInsets.only(right: 50),
                    child: Text(
                      ' تسجيل الدخول',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontFamily: 'Janna LT',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 50),
                    child: Text(
                      'الرجاء تسجيل الدخول قبل المتابعة',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5299999713897705),
                        fontSize: 18,
                        fontFamily: 'Janna LT',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
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
                    width: MediaQuery.of(context).size.width - 60,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6499999761581421),
                        fontSize: 16,
                        fontFamily: 'Janna LT',
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.right,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.person_outline_outlined),
                        suffixIconColor:
                            Colors.black.withOpacity(0.6499999761581421),
                        hintText: 'الاسم الكامل',
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
                    width: MediaQuery.of(context).size.width - 60,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6499999761581421),
                        fontSize: 16,
                        fontFamily: 'Janna LT',
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.right,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.lock_outline_rounded),
                        suffixIconColor:
                            Colors.black.withOpacity(0.6499999761581421),
                        hintText: 'كلمة السر',
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
              Row(
                children: [
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              'الدخول',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Janna LT',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        width: 126,
                        height: 49,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.99, 0.13),
                            end: Alignment(-0.99, -0.13),
                            colors: [
                              Color(0xFF2DCEE4),
                              Color(0xFF50DEF2),
                              Color(0xFF79ECFB),
                              Color(0xFF88F0FF)
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      ),
                    ),
                    margin: EdgeInsets.only(left: 22),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
