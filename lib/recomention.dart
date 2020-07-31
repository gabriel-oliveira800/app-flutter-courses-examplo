import 'package:coursesApp/model/Couser.dart';
import 'package:flutter/material.dart';
import 'components/item_grid.dart';
import 'details_couser.dart';

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
          onTapOne: () => toDetails(context, cousers[0]),
          onTapTwo: () => toDetails(context, cousers[1]),
        ),
        ItemGrid(
          oneCourser: cousers[2],
          twoCourser: cousers[3],
          onTapOne: () => toDetails(context, cousers[2]),
          onTapTwo: () => toDetails(context, cousers[3]),
        ),
        ItemGrid(
          oneCourser: cousers[4],
          twoCourser: cousers[0],
          onTapOne: () => toDetails(context, cousers[4]),
          onTapTwo: () => toDetails(context, cousers[0]),
        ),
      ],
    );
  }

  void toDetails(BuildContext context, Courser courser) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetailsCouser(
          courser: courser,
        ),
      ),
    );
  }
}
