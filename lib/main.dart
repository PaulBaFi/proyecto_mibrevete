import 'package:flutter/material.dart';
import 'package:proyecto_mibrevete/pages/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _routes = {
    '/': (context) => HomePage(),
    '/alumno': (context) => AlumnoPage(),
    '/vehiculo': (context) => VehiculoPage(),
    '/instructor': (context) => InstructorPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Brevete',
      initialRoute: '/',
      routes: _routes,
      onGenerateRoute: (settings) => MaterialPageRoute(
        builder: (context) => const Page404(),
      ),
    );
  }
}
