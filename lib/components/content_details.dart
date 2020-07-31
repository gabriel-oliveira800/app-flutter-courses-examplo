import 'package:flutter/material.dart';

import 'content_item.dart';

class CourserContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ContentItem(),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ContentItem(
                color: Colors.cyan,
                avatar: 'assets/school.png',
                initSubtitle: 'Professores',
                subtitle: ' há disposição.',
                title: '7 Melhores Práticas',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ContentItem(
                color: Colors.pink,
                title: 'Templates para Design.',
                initSubtitle: '500Mb',
                subtitle: ' de arquivos para você.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
