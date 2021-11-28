import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'donor_screen.dart';
import 'login.dart';
import 'receiver_screen.dart';

class screen1 extends StatelessWidget {
  const screen1({Key? key}) : super(key: key);

  static const appTitle = 'Pak Blood Donation';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(title: Text(title),backgroundColor: Colors.redAccent,),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.redAccent,
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
                Navigator.pop(context);
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
                  MaterialPageRoute(builder: (context) => LoginPage()),
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
                Navigator.pop(context);
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
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
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
                color: Colors.redAccent,
              ),
            ),

          ),
          Expanded(
            flex: 4,
            child: Container(
              // width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50), ),
                  color: Colors.white,

                ),
                child: Column(
                  children: [
                    const SizedBox(height: 50,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("images/blood-donation.png"),height: 150,width: 150,),
                        ClipOval(
                          child: Material(
                            color: Colors.blue,
                            shadowColor: Colors.grey,// Button color
                            child: InkWell(
                              splashColor: Colors.red, // Splash color
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Doner()),
                                );
                              },
                              child:  SizedBox(width: 80, height: 80,
                                child: Image.asset('images/b-d-logo.png'),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Text('Donor',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),),
                        const SizedBox(height: 20,),
                        ClipOval(
                          child: Material(
                            color: Colors.blue,
                            shadowColor: Colors.grey,// Button color
                            child: InkWell(
                              splashColor: Colors.red, // Splash color
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const receiver_screen()),
                                );
                              },
                              child:  SizedBox(width: 80, height: 80,
                                child:  Image.asset('images/reciever.png'),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Text('Receiver',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),),
                        Image(image: AssetImage('images/blood-donation.png'),height: 150,width: 150,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 70,),
                      ],
                    ),
                  ],
                )
            ),

          ),

        ],
      ),

      ),

    );
  }
}