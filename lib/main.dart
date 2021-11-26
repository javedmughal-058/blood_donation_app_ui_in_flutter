import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Screens/selection_screen.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      backgroundColor: Colors.white,
      body:   SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                  ),
                  child: Container(
                      decoration: const BoxDecoration(
                          //color: Colors.black,
                          image: DecorationImage(
                              image:AssetImage('assets/images/launch.png'),
                              //fit:BoxFit.cover
                          ),
                        // button text
                      )
                  )
                  ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                //width: double.infinity,
                color: Colors.redAccent,
                child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                   const Spacer(),
                    const Text('Blood Donation',
                     style: TextStyle(
                       fontSize: 24,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                    const Text('is a great act\nof kindness.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        height: 1.5,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                    ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      MaterialButton(
                        height: 50,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        color: Colors.redAccent,
                        onPressed: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const screen1()),
                        );},
                      child: const Text('Let Started',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),),
                    ],)
                  ],
                ),
               ),
              ),
            ),
            ),
          ],
        ),
      ),

    );
  }
}