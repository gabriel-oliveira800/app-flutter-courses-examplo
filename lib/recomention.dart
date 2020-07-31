import 'package:coursesApp/model/Couser.dart';
import 'package:flutter/material.dart';
import 'components/item_grid.dart';

class Recomentaion extends StatelessWidget {
  final List<Courser> cousers;

  const Recomentaion({Key key, @required this.cousers}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemGrid(
          oneCourser: cousers[0],
          twoCourser: cousers[1],
        ),
        ItemGrid(
          oneCourser: cousers[2],
          twoCourser: cousers[3],
        ),
        ItemGrid(
          oneCourser: cousers[4],
          twoCourser: cousers[0],
        ),
      ],
    );
  }
}
