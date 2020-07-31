import 'package:coursesApp/model/Couser.dart';
import 'package:flutter/material.dart';

import 'body_grid.dart';
import 'header_grid.dart';

class ItemGrid extends StatelessWidget {
  final Courser oneCourser;
  final Function onTapOne;
  final Function onTapTwo;
  final Courser twoCourser;
  const ItemGrid({
    this.onTapOne,
    this.onTapTwo,
    @required this.oneCourser,
    @required this.twoCourser,
  });

  @override
  Widget build(BuildContext context) {
    final double radius = 24;

    return Row(
      children: <Widget>[
        Expanded(
          child: InkWell(
            onTap: onTapOne,
            child: Card(
              color: oneCourser.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    child: HeaderGrid(
                      name: oneCourser.user.name,
                      avatar: oneCourser.user.avatar,
                    ),
                    padding: const EdgeInsets.only(
                      left: 4,
                      top: 18,
                      bottom: 18,
                    ),
                  ),
                  BodyGrid(
                    radius: radius,
                    name: oneCourser.name,
                    ponits: oneCourser.points,
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: onTapTwo,
            child: Card(
              color: twoCourser.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    child: HeaderGrid(
                      name: twoCourser.user.name,
                      avatar: twoCourser.user.avatar,
                    ),
                    padding: const EdgeInsets.only(
                      left: 4,
                      top: 18,
                      bottom: 18,
                    ),
                  ),
                  BodyGrid(
                    radius: radius,
                    name: twoCourser.name,
                    ponits: twoCourser.points,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
