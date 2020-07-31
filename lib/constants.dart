import 'package:flutter/material.dart';

import 'model/Couser.dart';
import 'model/User.dart';

final List<Courser> courser = [
  Courser(
    user: User(
      name: 'Gustavo Kenter',
      description: 'Professor',
      avatar: 'assets/photo_03.jpg',
    ),
    points: 4.9,
    color: Colors.pink,
    name: 'UX - UI Design',
  ),
  Courser(
    user: User(
      name: 'Tiana Mango',
      description: 'Professora',
      avatar: 'assets/photo_01.jpg',
    ),
    points: 4.3,
    color: Colors.purple,
    name: 'Animation in After Effects',
  ),
  Courser(
    user: User(
      name: 'Dulce',
      description: 'Aluno',
      avatar: 'assets/photo_04.jpg',
    ),
    points: 4.1,
    color: Colors.blue,
    name: 'Mobile app Design',
  ),
  Courser(
    user: User(
      name: 'Lincoln Bator',
      description: 'Professor',
      avatar: 'assets/photo_05.jpg',
    ),
    points: 4.5,
    color: Colors.amber,
    name: 'JavaScript to web',
  ),
  Courser(
    user: User(
      name: 'Livia Lubin',
      description: 'Aluna',
      avatar: 'assets/photo_01.jpg',
    ),
    points: 4.7,
    color: Colors.cyan,
    name: 'Flutter to App',
  ),
];
