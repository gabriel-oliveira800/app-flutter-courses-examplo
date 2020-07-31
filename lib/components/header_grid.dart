import 'package:flutter/material.dart';

class HeaderGrid extends StatelessWidget {
  final String name;
  final String avatar;

  const HeaderGrid({
    Key key,
    this.name = 'Tiana MAngo',
    this.avatar = 'assets/photo_05.jpg',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage(avatar),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              name ?? '',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
