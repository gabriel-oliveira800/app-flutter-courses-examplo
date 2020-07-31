import 'package:flutter/material.dart';

import 'constants.dart';
import 'list_course.dart';

class Body extends StatelessWidget {
  final double radius;
  const Body({Key key, this.radius = 48}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radius),
          topRight: Radius.circular(radius),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 24,
              ),
              child: Text(
                'Top Cursos',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.black.withOpacity(0.75)),
              ),
            ),
            ListCourse(coursers: courser),
          ],
        ),
      ),
    );
  }
}
