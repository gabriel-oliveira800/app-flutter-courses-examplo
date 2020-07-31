import 'package:coursesApp/model/Couser.dart';
import 'package:flutter/material.dart';

import 'count.dart';

class HeaderGrid extends StatelessWidget {
  final Courser courser;
  const HeaderGrid({Key key, this.courser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                courser.color,
                courser.color.withOpacity(0.4),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(80 / 3),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                courser.name,
                style: Theme.of(context).textTheme.headline4.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 28,
                    ),
              ),
              CountStar(points: courser.points),
            ],
          ),
        )
      ],
    );
  }
}
