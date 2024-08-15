import 'package:flutter/material.dart';
import 'dart:ui';

List<String> photos = [
  './assets/images/img.jpg',
  './assets/images/img1.jpg',
  './assets/images/img2.jpg',
  './assets/images/img3.jpg',
  './assets/images/img4.jpg',
  './assets/images/img5.jpg',
  './assets/images/img6.jpg',
  './assets/images/img7.jpg',
];

List<Widget> numbers = [
  Column(
    children: [
      for( int i =0 ; i < photos.length; i++)
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: SizedBox(
          height: 250,
          width: 400,
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Image(
              image: AssetImage(photos[i]),
              fit: BoxFit.cover,
            ),
          ),
          ),
      ),
    ],
  ),
];