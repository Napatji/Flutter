//Package
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
      ),
      body: const Text(
        'This is body',
        textAlign: TextAlign.center,
      ),
    ),
  ));
}
