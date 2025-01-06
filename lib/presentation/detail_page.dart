import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String name;

  const DetailPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(name),
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}
