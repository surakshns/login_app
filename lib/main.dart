import 'package:flutter/material.dart';
import 'package:login_page/Login.dart';
import 'package:login_page/Register.dart';
import 'Register.dart';
import 'Buttonwiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Image(
              image: NetworkImage(
                  'https://blush.design/api/download?shareUri=T8NRq-rr2&s=0.1%7EFF8282-0.2%7EB75858&w=800&h=800&fm=png'),
            ),
            Text(
              'WELCOME!',
              style: TextStyle(color: Color(0xff001386), fontSize: 50),
            ),
            Text(
              'to the world of News and Updates...',
              style: TextStyle(color: Color(0xff7A83C0), fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Buttonwiz(
              text: 'Login',
              col: Color(0xff001386),
              onpress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Buttonwiz(
              text: 'Register',
              col: Color(0xff001386),
              onpress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Register();
                    },
                  ),
                );
              },
            ),
            Expanded(
              child: Image(
                width: MediaQuery.of(context).size.width,
                image: NetworkImage(
                    'https://blush.design/api/download?shareUri=zZ5hym3Cl&w=800&h=800&fm=png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
