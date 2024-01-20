import 'package:flutter/material.dart';
import 'package:rjd_app/Screens/About.dart';
import 'package:rjd_app/Screens/AccountScreen.dart';
import 'package:rjd_app/Screens/Admin_Reports.dart';
import 'package:rjd_app/Screens/HomeScreen.dart';
import 'package:rjd_app/Screens/Starter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainDrawer extends StatefulWidget {
  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  String username1 = '';
  String company1 = '';
  void get_username() async {
    SharedPreferences sharedpreferences = await SharedPreferences.getInstance();
    final username = sharedpreferences.getString("username");
    final company = sharedpreferences.getString("company");
    setState(() {
      username1 = username.toString();
      company1 = company.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    get_username();
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
                        Text(username1,
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
                        Text(company1,
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
                      MaterialPageRoute(builder: (context) => Starter()));
                },
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AccountScreen()));
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Admin_Reports()));
                },
                title: Text('Reports'),
                leading: Icon(Icons.report_gmailerrorred_rounded),
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
