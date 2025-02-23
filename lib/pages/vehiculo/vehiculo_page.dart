import 'package:flutter/material.dart';
import 'package:proyecto_mibrevete/components/appbar_custom.dart';

class VehiculoPage extends StatefulWidget {
  const VehiculoPage({super.key});

  @override
  State<VehiculoPage> createState() => _VehiculoPageState();
}

class _VehiculoPageState extends State<VehiculoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBarCustom(
            title: 'Vehículos',
            placeholder: 'Buscar vehículo..',
          ),
          Text('Vehículos')
        ],
      ),
    );
  }
}
