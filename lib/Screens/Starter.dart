import 'package:flutter/material.dart';
import 'package:rjd_app/Screens/LoginScreen.dart';

class Starter extends StatefulWidget {
  const Starter({super.key});

  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 160),
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
                  color: Colors.black.withOpacity(0.7599999904632568),
                  fontSize: 18,
                  fontFamily: 'Janna LT',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              Text(
                'version: 1.0.0',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Janna LT',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 200,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                style: TextButton.styleFrom(primary: const Color(0xFF1CEC95)),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'التالي',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Janna LT',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  width: 310,
                  height: 65,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-1.00, -0.04),
                      end: Alignment(1, 0.04),
                      colors: [
                        Color(0xFF1CEC95),
                        Color(0xFF78FFC6),
                        Color(0xFF1CEC8D)
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
