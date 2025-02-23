import 'package:flutter/material.dart';
import 'package:proyecto_mibrevete/utils.dart';

class AppBarCustom extends StatefulWidget {
  final String title;
  final String placeholder;
  const AppBarCustom(
      {super.key, required this.title, required this.placeholder});

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  String get title => widget.title;
  String get placeholder => widget.placeholder;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: CustomAppBarClipper(),
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
                headerCustom(context, title),
                SizedBox(height: 10),
                //Barra de busqueda
                searchEngine(placeholder),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Row headerCustom(BuildContext context, String title) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 24,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Container searchEngine(String placeholder) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
          hintText: placeholder,
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
