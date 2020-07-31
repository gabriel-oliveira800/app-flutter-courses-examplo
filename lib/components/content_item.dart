import 'package:flutter/material.dart';

class ContentItem extends StatelessWidget {
  final Color color;
  final String title;
  final String avatar;
  final String subtitle;
  final String initSubtitle;

  const ContentItem({
    this.color = Colors.indigo,
    this.initSubtitle = '250 min',
    this.subtitle = ' de conteúdos.',
    this.title = '12 Video Tutoriais',
    this.avatar = 'assets/camera.png',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(18.0),
          child: Image.asset(
            avatar,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  text: initSubtitle,
                  style: TextStyle(color: color),
                  children: [
                    TextSpan(
                      text: subtitle,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
