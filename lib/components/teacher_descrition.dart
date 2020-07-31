import 'package:coursesApp/model/Couser.dart';
import 'package:flutter/material.dart';

import 'account.dart';

class TeacherDescription extends StatelessWidget {
  final Courser courser;

  const TeacherDescription({
    Key key,
    @required this.courser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 105,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(105 / 3),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Account(
              title: courser.user.name.split(" ").first,
              horizontal: 18,
              subtitle: 'Designer',
              styleTitle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              styleSubtitle: TextStyle(),
              avatar: courser.user.avatar,
            ),
            Icon(
              Icons.arrow_forward,
              size: 38,
              color: courser.color,
            ),
          ],
        ),
      ),
    );
  }
}
