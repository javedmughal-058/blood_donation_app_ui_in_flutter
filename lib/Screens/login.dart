import 'package:blood_bank/Screens/selection_screen.dart';
import 'package:blood_bank/Screens/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'Login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('images/b-d-logo.png'),
      ),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
    //  initialValue: 'abc@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
        ))
    );
    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
        )
      ),
    );
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {

        },
        padding: EdgeInsets.all(12),
        color: Colors.red,
        child: Text('Log In', style: TextStyle(color: Colors.white,height: 2)),
      ),
    );
    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );
    final registerLabel=  InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp()));
      },
      child: Container(
        //margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Don\'t have an account ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Register',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        padding: EdgeInsets.all(50.0),
        decoration: BoxDecoration(
          color: Colors.red,
          //borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: Container(

          padding: EdgeInsets.all(50.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50),), color: Colors.white,),
          child: ListView(

            shrinkWrap: true,
            //padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              IconButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => screen1(),
                    ),
                );
              }, icon: Icon(Icons.arrow_back_rounded,color: Colors.redAccent,)),
              logo,
              SizedBox(height: 12.0),
              email,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 10.0),
              loginButton,
              forgotLabel,
              registerLabel
            ],
          ),
        ),
      ),
    );
  }
}