import 'package:flutter/material.dart';
import 'package:proyecto_mibrevete/components/appbar_custom.dart';

class AlumnoPage extends StatefulWidget {
  const AlumnoPage({super.key});

  @override
  State<AlumnoPage> createState() => _AlumnoPageState();
}

class _AlumnoPageState extends State<AlumnoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      AppBarCustom(
        title: 'Alumnos',
        placeholder: 'Buscar alumno..',
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 0),
        height: 650,
        child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 3,
                childAspectRatio: 1.5,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Column(children: [
                            Text(
                              'JOSÉ MIUGEL VILLAREAL QUISPE DE LA ROSA MARTINEZ',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 17),
                            Text(
                              'COD. 02193212',
                              style: TextStyle(
                                  fontSize: 15, fontFamily: 'Monstserrat'),
                              textAlign: TextAlign.center,
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    ]));
  }
}
