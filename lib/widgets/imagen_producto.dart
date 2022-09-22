import 'package:flutter/material.dart';

class ImagenProducto extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10, right: 10, top: 10,
      ),
      child: Container(
        width: double.infinity,
        height: 450,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
          child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: AssetImage('assets/no-image.png'),
            fit: BoxFit.cover,
          ),
          ),
      ),
    );
  }
}