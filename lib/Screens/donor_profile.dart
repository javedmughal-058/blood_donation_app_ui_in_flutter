import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';

class Donor_profile extends StatelessWidget {
  const Donor_profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'),backgroundColor: Colors.red,),
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            flex: 2,
          child: Container(
            child: Row(
              children: const [
                CircleAvatar(
                  maxRadius: 80,
                  minRadius: 80,
                  child: Image(
                    image: AssetImage("images/man.png"),
                  ),
                ),

                Text('Donor Name',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54,
                  fontFamily: 'Shrikhand',
                ),),
              ],
            ),
          ),
          ),
          SizedBox(height: 20),
          Expanded(flex: 8,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        height: 50,
                        minWidth: 70,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70.0)),
                        color: Colors.blueAccent,
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ChatScreen()),
                          );},
                        child: Text('Call me',style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Shrikhand',
                          color: Colors.white,
                        ),),),
                      SizedBox(width: 30),
                      MaterialButton(
                        height: 50,
                        minWidth: 70,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70.0)),
                        color: Colors.blueAccent,
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ChatScreen()),
                          );},
                        child: Text('Message',style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Shrikhand',
                          color: Colors.white,
                        ),),),
                    ],
                  ),
                  Divider(thickness: 1,color: Colors.black54,),
                  Row(
                    children: [
                      Expanded(child:
                      Image(image: AssetImage("images/map.png")),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
