import 'package:flutter/material.dart';
class Town extends StatelessWidget {
  const Town({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Town'),),
      body: Center(child: Text('Town')),
    );
  }
}
