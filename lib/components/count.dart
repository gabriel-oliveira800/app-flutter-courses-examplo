import 'package:flutter/material.dart';

class CountStar extends StatelessWidget {
  final double points;
  const CountStar({Key key, this.points = 4.9}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double height = 48;
    final double width = 80;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(height / 2),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(Icons.star, color: Colors.pink),
          Text(
            points.toString(),
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
