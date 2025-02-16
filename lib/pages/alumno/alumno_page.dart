import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'dart:ui' as ui;
class AlumnoPage extends StatefulWidget {
  const AlumnoPage({super.key});

  @override
  State<AlumnoPage> createState() => _AlumnoPageState();
}

class _AlumnoPageState extends State<AlumnoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        
        children: <Widget>[
          AppBarCustom(),
          Container(
            margin:const EdgeInsets.symmetric(vertical: 0),
            height: 650,
              child: PageView.builder(
                itemCount: 3,
                itemBuilder: (context, index){
                  return GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 8,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 3,
                      childAspectRatio: 1.5,
                    ),
                    itemBuilder:(context, index) {
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
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 6,
                                offset: Offset(0, 6),
                              ),
                            ],
                          ),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 15),
                                child: Column(
                                  children: [
                                    Text('JOSÉ MIUGEL VILLAREAL QUISPE DE LA ROSA MARTINEZ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                                    SizedBox(height: 17),
                                    Text('COD. 02193212', style: TextStyle(fontSize: 15, fontFamily: 'Monstserrat' ), textAlign: TextAlign.center,),
                                  ]

                                ),

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
          
        ]
      )
        
    );
  }
}

class AppBarCustom extends StatefulWidget {
  const AppBarCustom({super.key});

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper:CustomAppBarClipper(),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.yellow, Colors.deepOrange, Colors.deepOrange],
              ),
            ),
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 24,),
                    ),
                    SizedBox(width: 10,),
                    Text('Alumno', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),

                ],
                ),
                SizedBox(height: 10),
                //Barra de busqueda
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Buscar alumno..',
                      border: InputBorder.none,
                      icon: Icon(Icons.search, color: Colors.grey,),
                    ),
                  ),
                )
              ],
              )
          )
        )
      ],
    );
  }
}


class CustomAppBarClipper extends CustomClipper<Path>{
  
  @override
  Path getClip(Size size) {
    
  
         
    Path path_0 = Path();
    path_0.moveTo(size.width*0,size.height*0);
    path_0.lineTo(size.width*0,size.height*0.6473857);
    path_0.quadraticBezierTo(size.width*0.0022167,size.height*0.8570857,size.width*0.1264750,size.height*0.8570857);
    path_0.quadraticBezierTo(size.width*0.3560583,size.height*0.8542429,size.width*0.8773417,size.height*0.8585143);
    path_0.quadraticBezierTo(size.width*1.0030667,size.height*0.8566143,size.width*1.0016833,size.height*1.0037143);
    path_0.quadraticBezierTo(size.width*1.0014750,size.height*0.7530000,size.width*1.0008333,size.height*-0.0028571);

    return path_0;
  
  
    
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldDelegate) {
    return false;
  }
  
}