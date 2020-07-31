import 'package:flutter/material.dart';
import 'components/item_list.dart';
import 'model/Couser.dart';

class ListCourse extends StatelessWidget {
  final List<Courser> coursers;

  const ListCourse({@required this.coursers});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.45,
      child: ListView.builder(
        itemCount: coursers.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int index) => ItemList(courser: coursers[index]),
      ),
    );
  }
}
