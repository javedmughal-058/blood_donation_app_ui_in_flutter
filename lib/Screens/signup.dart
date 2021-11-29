
import 'package:flutter/material.dart';

import 'login.dart';

class SignUp extends StatefulWidget {
  static String tag = 'Signup-page';

  const SignUp({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUp> {
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
    final name = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      //initialValue: 'abc@gmail.com',
      decoration: InputDecoration(
        hintText: 'Name',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'abc@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final contact = TextFormField(
      // autofocus: false,
      //obscureText: true,
      decoration: InputDecoration(
        hintText: 'Conatct',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
    final SigupButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          const AlertDialog(title: Text("Thanks for joining"));
        },
        padding: const EdgeInsets.all(12),
        color: Colors.red,
        child: const Text('Sign Up', style: TextStyle(color: Colors.white,height: 2)),
      ),
    );
    final loginLabel=  InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const LoginPage()));
      },
      child: Container(
        //margin: EdgeInsets.symmetric(vertical: 5),
        //padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'have an account ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Login',
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
        padding: const EdgeInsets.all(50.0),
        decoration: const BoxDecoration(
          color: Colors.red,
          //borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: Container(

          padding: const EdgeInsets.all(50.0),
          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50),), color: Colors.white,),
          child: ListView(
            shrinkWrap: true,
            //padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              IconButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage(),
                  ),
                );
              }, icon: const Icon(Icons.arrow_back_rounded,color: Colors.redAccent,)),
              logo,
              const SizedBox(height: 10.0),
              name,
              const SizedBox(height: 8.0),
              email,
              const SizedBox(height: 8.0),
              password,
              const SizedBox(height: 8.0),
              contact,
              const SizedBox(height: 8.0),
              SigupButton,
              const SizedBox(height: 8.0),
              loginLabel,
            ],
          ),
        ),
      ),
    );
  }
}