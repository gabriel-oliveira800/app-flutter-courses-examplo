import 'package:coursesApp/components/custom_button.dart';
import 'package:flutter/material.dart';

import 'components/account.dart';
import 'components/content_details.dart';
import 'components/header_details.dart';
import 'components/teacher_descrition.dart';
import 'model/Couser.dart';

class BodyDetails extends StatelessWidget {
  final Courser courser;
  const BodyDetails({Key key, this.courser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double radius = 48;
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.95),
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
              padding: const EdgeInsets.only(top: 18.0, left: 12),
              child: HeaderGrid(courser: courser),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0),
              child: Text(
                'Descrição do curso',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            CourserContent(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0),
              child: Text(
                'Orientador',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            TeacherDescription(courser: courser),
            SizedBox(height: 12),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
