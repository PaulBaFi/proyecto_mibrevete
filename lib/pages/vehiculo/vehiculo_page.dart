import 'package:flutter/material.dart';

class VehiculoPage extends StatefulWidget {
  const VehiculoPage({super.key});

  @override
  State<VehiculoPage> createState() => _VehiculoPageState();
}

class _VehiculoPageState extends State<VehiculoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehículos'),
      ),
      body: Center(child: Text('Página de Vehículos')),
    );
  }
}
