import 'package:flutter/material.dart';
import 'package:rjd_app/Screens/About.dart';
import 'package:rjd_app/Screens/Starter.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
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
                  height: 200,
                ),
                Center(
                  child: Container(
                    width: 185,
                    height: 185,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage("assets/images/verified-account 1.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Text(
                  'تفعيل الحساب',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Janna LT',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'الرجاء الانتظار\n ريثما يتم تفعيل حسابك خلال بضعة ساعات',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.699999988079071),
                    fontSize: 16,
                    fontFamily: 'Janna LT',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 100,
                  height: 76,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(1.00, 0.08),
                      end: Alignment(-1, -0.08),
                      colors: [
                        Color(0xFFFF0000),
                        Color(0xFFFF1212),
                        Color(0xFFF04A4A),
                        Color(0xFFFF6161)
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 14,
                        offset: Offset(-10, 22),
                        spreadRadius: 6,
                      )
                    ],
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Text(
                          'الخروج من التطبيق',
                          textAlign: TextAlign.center,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
