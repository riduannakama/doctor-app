import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  Color primaryColor = Colors.orange;
  Color secondaryColor = Colors.orangeAccent;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Text(
              'Sign In to Our App for Continue',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Enter Your Email and Password below to Continue to the application ! ',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(color: Colors.black, fontSize: 14),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/login.png'),
            SizedBox(
              height: 30,
            ),
            buildTextField('Username', Icons.account_circle),
            SizedBox(
              height: 20,
            ),
            buildTextField('Password', Icons.lock),
            SizedBox(
              height: 40,
            ),
            MaterialButton(
              elevation: 0,
              minWidth: double.maxFinite,
              height: 50,
              onPressed: () {},
              color: Colors.orange,
              child: Text('Login',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              textColor: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              elevation: 0,
              minWidth: double.maxFinite,
              height: 50,
              onPressed: () {},
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.google),
                  SizedBox(width: 10),
                  Text('Sign In using Google'),
                ],
              ),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

//function
buildTextField(String labelText, IconData icon) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.transparent, border: Border.all(color: Colors.grey)),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
        icon: Icon(
          icon,
          color: Colors.black,
        ),
        border: InputBorder.none,
      ),
      style: TextStyle(color: Colors.white),
    ),
  );
}
