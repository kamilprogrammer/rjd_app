import 'package:flutter/material.dart';
import 'package:rjd_app/Screens/About.dart';
import 'package:rjd_app/Screens/AccountScreen.dart';
import 'package:rjd_app/Screens/HomeScreen.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/logo.jpg',
                      ),
                      radius: 36,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('كامل عبد الرزاق الرفاعي',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Janna LT',
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('شركة ارجي داتا للشبكات',
                            style: TextStyle(
                              color: Color.fromARGB(139, 0, 0, 0),
                              fontSize: 12,
                              fontFamily: 'Janna LT',
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AccountScreen(
                                username: 'Kamel abdulrazzak rifai',
                              )));
                },
                title: Text(
                  'Account',
                ),
                leading: Icon(Icons.person),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
                title: Text('About'),
                leading: Icon(Icons.info_outline),
              ),
              ListTile(
                onTap: () {},
                title: Text('Logout'),
                leading: Icon(Icons.logout),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
