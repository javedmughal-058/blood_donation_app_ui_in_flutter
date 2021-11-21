import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'Blood Donation App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
      appBar: AppBar(title: Text(title),backgroundColor: Colors.teal,),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('Applicant Profile',
                  style: TextStyle(
                      color: Colors.teal
                  ),
                ),
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
              title: const Text('Account',
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
      body:   SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            Container(
              alignment: Alignment.topLeft,
                  height: 110,
                  width: 120,
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  ),
              child:Text('"Blood donation is a great Act of Kindness.”',
                          style: TextStyle(color:
                          Colors.deepOrange,
                            fontSize: 18.0,
                            fontFamily: 'Satisfy',
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(onPressed: (){},
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                      child: Text('Donar',
                      style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                         backgroundColor: Colors.teal,
                        color: Colors.white,
                      ),
                        textAlign: TextAlign.center,
                    ),
                ),
                ),
                FlatButton(onPressed: (){},
                  child: Text('Receiver',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.teal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(),
            Row(),
          ],
        ),
      ),

    );
  }
}