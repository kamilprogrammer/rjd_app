import 'package:flutter/material.dart';
import 'package:rjd_app/Screens/AccountScreen.dart';
import 'package:rjd_app/Screens/LoginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Starter extends StatefulWidget {
  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  void redirect() async {
    SharedPreferences sharedpreferences = await SharedPreferences.getInstance();
    final bool1 = sharedpreferences.getBool("Login");
    if (bool1 == null) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AccountScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 165,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 138,
                    height: 138,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo.jpg"),
                        fit: BoxFit.cover,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x7F000000),
                          blurRadius: 28,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'RJ-Data-App',
                style: TextStyle(
                  color: Color(0xFF5B4F4F),
                  fontSize: 16,
                  fontFamily: 'Janna LT',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'version: 1.0.0',
                style: TextStyle(
                  color: Color(0xFF5B5050),
                  fontSize: 16,
                  fontFamily: 'Janna LT',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 200,
              ),
              TextButton(
                onPressed: () {
                  redirect();
                },
                style: TextButton.styleFrom(
                    primary: Color.fromARGB(255, 28, 198, 236)),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'التالي',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Janna LT',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width - 100,
                  height: 52,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-1.00, -0.04),
                      end: Alignment(1, 0.04),
                      colors: [
                        Color(0xFF78FFC6),
                        Color(0xFF1CECBA),
                        Color(0xFF1CE0EC),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
