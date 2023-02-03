import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key,
  required this.imgpath,
    required this.label,
    required this.price,
  }) : super(key: key);
  final String imgpath;
  final String label;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8.0,
            spreadRadius: 3.0,
            offset: Offset.zero,

          ),
        ]
      ),
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
      aspectRatio: 4/3,

              child: Image.network(imgpath,
              height: 150,
                width: 300,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
          ),
          ),
          SizedBox(height: 10,),
    Text(price,
    textAlign: TextAlign.center,
    style: TextStyle(
    color: Colors.black,
    )
    )

        ],
      ),
    );
  }
}
