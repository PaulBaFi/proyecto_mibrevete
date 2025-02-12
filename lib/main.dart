import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.yellow, Colors.deepOrange, Colors.deepOrange]),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Positioned(
                    top: 150,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('lib/assets/images/logo.png'),
                          width: 250,
                        ),
                        SizedBox(height: 100),
                        homeButton('ALUMNOS'),
                        SizedBox(height: 10),
                        homeButton('INSTRUCTORES'),
                        SizedBox(height: 10),
                        homeButton('VECHÍCULOS'),
                        SizedBox(height: 10),
                        homeButton('REPORTES'),
                      ],
                    )),
              ],
            )));
  }

  OutlinedButton homeButton(String title) {
    return OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            minimumSize: Size(350, 60),
            foregroundColor: Colors.white,
            backgroundColor: Colors.transparent,
            side: BorderSide(color: Colors.white),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0))),
        child: Text(
          title,
          style: TextStyle(letterSpacing: 2, fontSize: 20),
        ));
  }
}
