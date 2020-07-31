import 'package:coursesApp/body.dart';
import 'package:flutter/material.dart';

import 'components/account.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              child: Account(),
              padding: const EdgeInsets.only(top: 28.0, bottom: 12),
            ),
            Expanded(
              child: Body(),
            ),
          ],
        ),
      ),
    );
  }
}
