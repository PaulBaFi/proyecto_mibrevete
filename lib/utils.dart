import 'package:flutter/material.dart';

class CustomAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0, size.height * 0);
    path_0.lineTo(size.width * 0, size.height * 0.6473857);
    path_0.quadraticBezierTo(size.width * 0.0022167, size.height * 0.8570857,
        size.width * 0.1264750, size.height * 0.8570857);
    path_0.quadraticBezierTo(size.width * 0.3560583, size.height * 0.8542429,
        size.width * 0.8773417, size.height * 0.8585143);
    path_0.quadraticBezierTo(size.width * 1.0030667, size.height * 0.8566143,
        size.width * 1.0016833, size.height * 1.0037143);
    path_0.quadraticBezierTo(size.width * 1.0014750, size.height * 0.7530000,
        size.width * 1.0008333, size.height * -0.0028571);

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
