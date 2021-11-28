
import 'package:blood_bank/Screens/selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:alert/alert.dart';

class Doner extends StatefulWidget {
  static String tag = 'Doner-page';
  @override
  _DonerPageState createState() => new _DonerPageState();
}

class _DonerPageState extends State<Doner> {
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
    String blood = 'A+';
    List<String> data = [
      'A+',
      'A-',
      'B+',
      'B-',
      'AB+',
      'AB-',
      'O+',
      'O-'
    ];
    final name = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      //initialValue: 'abc@gmail.com',
      decoration: InputDecoration(
        hintText: 'Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
    final address = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(

        hintText: 'Address',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
      ),

    );
    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final contact = TextFormField(
      // autofocus: false,
      //obscureText: true,
      decoration: InputDecoration(
        hintText: 'Conatct',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
    final group= DropdownButton(
      value: blood,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.red, fontSize: 16),
      underline: Container(
        height: 1,
        color: Colors.red,
      ),
      onChanged: (String? newValue) {
        setState(() {
          data = newValue! as List<String>;
        });
      },
      items: data.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

    final SigupButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          AlertDialog(title: Text("Thanks for joining"));
        },
        padding: EdgeInsets.all(12),
        color: Colors.redAccent,
        child: Text('Submit', style: TextStyle(color: Colors.white,height: 2)),
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
              SizedBox(height: 5.0),
              name,
              SizedBox(height: 5.0),
              address,
              SizedBox(height: 5.0),
              contact,
              SizedBox(height: 5.0),
              group,
              SizedBox(height: 5.0),
              SigupButton,
            ],
          ),
        ),
      ),
    );
  }
}