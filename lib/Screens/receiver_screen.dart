import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                    child: Row(
                      children: [
                        MaterialButton(
                          height: 110,
                          minWidth: 100,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.redAccent,
                          onPressed: (){},
                          child: Text(
                            'A+',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 20,),
                        MaterialButton(
                          height: 110,
                          minWidth: 100,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.redAccent,
                          onPressed: (){},
                          child: Text(
                            'A+',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Row(
                      children: [
                        MaterialButton(
                          height: 110,
                          minWidth: 100,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.redAccent,
                          onPressed: (){},
                          child: Text(
                            'A+',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 20,),
                        MaterialButton(
                          height: 110,
                          minWidth: 100,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.redAccent,
                          onPressed: (){},
                          child: Text(
                            'A+',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Row(
                      children: [
                        MaterialButton(
                          height: 110,
                          minWidth: 100,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.redAccent,
                          onPressed: (){},
                          child: Text(
                            'A+',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 20,),
                        MaterialButton(
                          height: 110,
                          minWidth: 100,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.redAccent,
                          onPressed: (){},
                          child: Text(
                            'A+',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              padding: EdgeInsets.all(50.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50),), color: Colors.white,),

            )
        )
        )
    );
  }
}
