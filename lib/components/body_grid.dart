import 'package:flutter/material.dart';

import 'count.dart';

class BodyGrid extends StatelessWidget {
  final String name;
  final double ponits;
  final double radius;

  const BodyGrid({
    @required this.name,
    @required this.radius,
    @required this.ponits,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      margin: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CountStar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
