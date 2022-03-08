import 'package:flutter/material.dart';
import 'package:home_guru_app/sign_in.dart';

class WelcomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(219, 240, 212, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(55),
              child: Container(
                child: Image.asset("image/Group 6.png"),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            RaisedButton(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Color.fromRGBO(20, 99, 86, 1), width: 1),
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                onPressed: () {},
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Color.fromRGBO(20, 99, 86, 1), fontSize: 40),
                )),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Color.fromRGBO(20, 99, 86, 1),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 85),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));},
                child: Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                )),
            SizedBox(
              height: 30,
            ),
            Text("or connect with",
                style: TextStyle(
                    color: Color.fromRGBO(20, 99, 86, 1), fontSize: 24)),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: Image.asset("image/Group 8.png"),
            )
          ],
        ),
      ),
    );
  }
}
