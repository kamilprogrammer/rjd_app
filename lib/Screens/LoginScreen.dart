import 'package:flutter/material.dart';
import 'package:rjd_app/Screens/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      'تسجيل الدخول',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
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
                        fontSize: 16,
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
                    width: MediaQuery.of(context).size.width - 100,
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
                    width: MediaQuery.of(context).size.width - 100,
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
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'الدخول',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Janna LT',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  width: 118,
                  height: 40,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.99, 0.13),
                      end: Alignment(-0.99, -0.13),
                      colors: [
                        Color(0xFF88F0FF),
                        Color(0xFF79ECFB),
                        Color(0xFF50DEF2),
                        Color(0xFF2DCEE4),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
