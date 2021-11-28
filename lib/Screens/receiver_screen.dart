import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'List_of_Donor.dart';
import 'selection_screen.dart';
import 'login.dart';

class receiver_screen extends StatelessWidget {
  const receiver_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(title: Text('Pak Blood Donation'),backgroundColor: Colors.redAccent,),
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
        body: SafeArea(child:
        Container(
            padding: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              //borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child:
                  Container(
                    child: Text('Which blood group Do you neend?',textAlign: TextAlign.center,style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),),),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListView(
                        children: [
                          SizedBox(height: 5,),
                          Container (
                            decoration: new BoxDecoration (
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListTile (
                              title: Text('A-',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                                textAlign: TextAlign. center,
                              ),
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const donorsList()));
                              },
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container (
                            decoration: new BoxDecoration (
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListTile (
                              title: Text('A+',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                                textAlign: TextAlign. center,
                              ),
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const donorsList()));
                              },
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container (
                            decoration: new BoxDecoration (
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListTile (
                              title: Text('B-',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                                textAlign: TextAlign. center,
                              ),
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const donorsList()));
                              },
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container (
                            decoration: new BoxDecoration (
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListTile (
                              title: Text('B+',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                                textAlign: TextAlign. center,
                              ),
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const donorsList()));
                              },
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container (
                            decoration: new BoxDecoration (
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListTile (
                              title: Text('AB-',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                                textAlign: TextAlign. center,
                              ),
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const donorsList()));
                              },
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container (
                            decoration: new BoxDecoration (
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListTile (
                              title: Text('AB+',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                                textAlign: TextAlign. center,
                              ),
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const donorsList()));
                              },
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container (
                            decoration: new BoxDecoration (
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListTile (
                              title: Text('O-',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                                textAlign: TextAlign. center,
                              ),
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const donorsList()));
                              },
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container (
                            decoration: new BoxDecoration (
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListTile (
                              title: Text('O+',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                                textAlign: TextAlign. center,
                              ),
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const donorsList()));
                              },
                            ),
                          ),

                        ],
                      ),
                    ),)
                ],
              ),

              padding: EdgeInsets.all(50.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50),), color: Colors.white,),
            ),
        ),

        ),

    );
  }
}
