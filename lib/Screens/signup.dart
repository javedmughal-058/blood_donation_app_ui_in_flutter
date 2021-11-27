import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signup_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Signup Profile",
      home: signup(),
    );
  }
}

class signup extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<signup> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                "SignUp",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                  color: Colors.redAccent,
                ),

              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.redAccent),
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("image/2.jpg"
                              ))),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              buildTextField("","Username", false),
              buildTextField("", "E-mail", false),
              buildTextField("", "Password", true),
              buildTextField("", "Confirm Password", true),
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                  onPressed: () {},
                  color: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 50.0),

                  elevation: 2,
                  child: Text("Signup",
                      style: TextStyle(
                          fontFamily: 'Ephesis',
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                          letterSpacing: 2.2,
                          color: Colors.white))
              ),

            ],

        ),
      ),
    ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 35.0),
        child: TextField(
          obscureText: isPasswordTextField ? showPassword : false,
          decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                icon: Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey,
                ))
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black26,
            ),
          ),
        ));
  }
}