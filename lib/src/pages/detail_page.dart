import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.color, required this.image});
  final int color;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(color),
              Colors.black
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      child: SizedBox(
                        height: 500.0,child: Image.asset(image),
                      ),
                    )
                  ],
                )
              ],
            ),
      )
        
    );
  }
}
