import 'package:flutter/material.dart';
import 'Screens/selection_screen.dart';
void main() {
  return runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: MyHomePage(title: 'Pak Blood Donation',),
      ),
    ),
  );
}
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
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(width: 0, color: Colors.red),
                      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(70),
                      ),
                    ),
                    child: const Image(image: AssetImage("images/launch.png"),height: 50,width: 50,))
            ),
            Expanded(
              flex: 2,
              child: Container(
                //width: double.infinity,
                color: Colors.red,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0, color: Colors.white),
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(70)),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MaterialButton(
                              height: 50,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70.0)),
                              color: Colors.red,
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const screen1()),
                                );},
                              child: Icon(Icons.arrow_forward, color: Colors.white,),),
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