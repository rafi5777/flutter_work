import 'package:flutter/material.dart';
class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News'),),
      body: Center(child: Text('News')),
    );
  }
}
