import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home_guru_app/home_screen.dart';

class SignIn extends StatelessWidget {
  Future<void> createUser() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _registerEmail, password: _registerPassword);
      print('User $userCredential');
    } on FirebaseAuthException catch (e) {
      print('Error: $e');
    } catch (e) {
      print('Error: $e');
    }
  }

  String _registerEmail = '';
  String _registerPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 235,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(219, 240, 212, 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 50, right: 50),
                child: Container(
                  child: Image.asset("image/Group 6.png"),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextField(
              onChanged: (value) {
                _registerEmail = value;
              },
              decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Color.fromRGBO(20, 99, 86, 1)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(20, 99, 86, 1), width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextField(
              obscureText: true,
              onChanged: (value) {
                _registerPassword = value;
              },
              decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Color.fromRGBO(20, 99, 86, 1)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(20, 99, 86, 1), width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color.fromRGBO(20, 99, 86, 1),
                      fontSize: 16),
                ),
              )
            ],
          ),
          SizedBox(height: 35),
          Container(
            child: ButtonTheme(
              minWidth: 300,
              height: 65,
              // ignore: deprecated_member_use
              child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color.fromRGBO(219, 240, 212, 1),
                  child: Text(
                    'Sign IN',
                    style: TextStyle(
                        fontSize: 40,
                        color: Color.fromRGBO(20, 99, 86, 1),
                        fontWeight: FontWeight.normal),
                  ),
                  onPressed: () {
                    createUser();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("or connect with",
              style: TextStyle(
                  color: Color.fromRGBO(20, 99, 86, 1), fontSize: 18)),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.only(left: 130, right: 130),
            child: Image.asset("image/Group 8.png"),
          ),
          SizedBox(height: 20),
          // ignore: deprecated_member_use
          Container(
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.white,
              child: Text(
                'Create an account',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color.fromRGBO(20, 99, 86, 1)),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    ));
  }
}
