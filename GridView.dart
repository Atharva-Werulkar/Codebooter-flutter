import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  final List<String> images = [
    'https://example.com/image1.jpg',
    'https://example.com/image2.jpg',
    'https://example.com/image3.jpg',
    'https://example.com/image4.jpg',
    'https://example.com/image5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Image.network(images[index]);
        },
      ),
    );
  }
}
