import 'package:blood_bank/Screens/selection_screen.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'donor_profile.dart';
import 'login.dart';

class donorsList extends StatelessWidget {
  const donorsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: const Text('List of Donors'),backgroundColor: Colors.red,),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image(image: AssetImage("images/launch.png"),)
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 14.0,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const screen1()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle_rounded),
              title: const Text('Admin',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 14.0,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings_applications_rounded ),
              title: const Text('Setting',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 14.0,
                ),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.article_rounded),
              title: const Text('About us',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 14.0,
                ),
              ),
              onTap: () {
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.info,
                  text: 'Pak Blood Donation \n V0.1.1 \nCopyRight \'MultiLearner\'',
                );

              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('App info',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 16.0,
                ),),
              onTap: () {
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.info,
                  text: 'Pak Blood Donation \n V0.1.1 \nCopyRight \'MultiLearner\'',
                );
              },
            ),

          ],
        ),
      ),
      body:   SafeArea(child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),

          ),
          Expanded(
            flex: 9,
            child: Container(
              // width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50), ),
                  color: Colors.white,
                ),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),),
              child: ListView(
                  children: [
                    Container(
                          height: 70,
                          decoration: BoxDecoration (
                          color: Colors.red,
                            borderRadius: BorderRadius.circular(10),

                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 20,),
                              CircleAvatar(
                                child:MaterialButton(onPressed: (
                                    ){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Donor_profile()),
                                  );
                                },
                                    child: const Image(image: AssetImage("images/man.png"),height: 50,width: 50,),),
                              ),
                              const SizedBox(width: 15),
                              Column(
                                children: const [
                                  SizedBox(height: 20,),
                                  Text('Name of Donor',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Shrikhand',
                                  ),),
                                  Text('+923001234567',style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Shrikhand',
                                  ),),
                                ],
                              ),
                              const Spacer(),
                              MaterialButton(onPressed: (){},
                                child: Row(
                                  children: [
                                    IconButton(onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const ChatScreen()),
                                      );
                                    }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                    const SizedBox(width: 15,),
                                    IconButton(onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const ChatScreen()),
                                      );
                                    }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                  ],
                                ),
                              ),
                                  ]
                                  ),
                                 ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/man.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/woman.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/man.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/woman.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/man.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/man.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/woman.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/man.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/man.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/woman.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/woman.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/man.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/man.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/man.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/woman.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            CircleAvatar(
                              child:MaterialButton(onPressed: (
                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Donor_profile()),
                                );
                              },
                                child: const Image(image: AssetImage("images/man.png"),height: 50,width: 50,),),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: const [
                                SizedBox(height: 20,),
                                Text('Name of Donor',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text('+923001234567',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.call_rounded),hoverColor: Colors.green, ),
                                  const SizedBox(width: 15,),
                                  IconButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ChatScreen()),
                                    );
                                  }, icon:const Icon(Icons.message),hoverColor: Colors.white, ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),


                             ]
                            ),

                        ),
       ),
          ),
        ]
      ),
      ),
    );
  }
}
