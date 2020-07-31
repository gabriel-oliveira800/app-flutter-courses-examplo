import 'package:coursesApp/model/Couser.dart';
import 'package:flutter/material.dart';

import 'account.dart';
import 'count.dart';

class ItemList extends StatelessWidget {
  final Courser courser;
  const ItemList({@required this.courser});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: size.width * 0.95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          gradient: LinearGradient(
            colors: <Color>[
              courser.color,
              courser.color.withOpacity(0.45),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CountStar(points: courser.points),
            Text(
              courser.name,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white),
            ),
            Account(
              title: courser.user.description,
              horizontal: 18,
              subtitle: courser.user.name,
              avatar: courser.user.avatar,
              styleTitle: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white),
              styleSubtitle: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
