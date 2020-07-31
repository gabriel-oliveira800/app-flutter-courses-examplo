import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  final String title;
  final String avatar;
  final String subtitle;
  final double horizontal;
  final TextStyle styleTitle;
  final TextStyle styleSubtitle;

  const Account({
    this.styleTitle,
    this.styleSubtitle,
    this.horizontal = 8,
    this.title = 'Olá, Juzane',
    this.avatar = 'assets/photo_01.jpg',
    this.subtitle = 'Aprenda rápido e fácil conosco.',
  });
  @override
  Widget build(BuildContext context) {
    final TextStyle _titleStyleDefault = Theme.of(context)
        .textTheme
        .headline4
        .copyWith(color: Colors.white, fontWeight: FontWeight.bold);

    final TextStyle _subtitleStyleDefault = Theme.of(context)
        .textTheme
        .subtitle1
        .copyWith(color: Colors.white, fontSize: 15);

    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 38,
                backgroundImage: AssetImage(avatar),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontal),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  title,
                  style: styleTitle ?? _titleStyleDefault,
                ),
                Text(
                  subtitle,
                  style: styleSubtitle ?? _subtitleStyleDefault,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
