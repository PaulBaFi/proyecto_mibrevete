import 'package:flutter/material.dart';
import 'package:proyecto_mibrevete/components/appbar_custom.dart';

class InstructorPage extends StatefulWidget {
  const InstructorPage({super.key});

  @override
  State<InstructorPage> createState() => _InstructorPageState();
}

class _InstructorPageState extends State<InstructorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBarCustom(
            title: 'Instructores',
            placeholder: 'Buscar instructor..',
          ),
          Text('Instructores'),
        ],
      ),
    );
  }
}
