import 'package:flutter/material.dart';

import 'body_details.dart';
import 'model/Couser.dart';

class DetailsCouser extends StatelessWidget {
  final Courser courser;
  const DetailsCouser({Key key, this.courser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                label: Text(
                  'Voltar',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Expanded(
              child: BodyDetails(courser: courser),
            ),
          ],
        ),
      ),
    );
  }
}
