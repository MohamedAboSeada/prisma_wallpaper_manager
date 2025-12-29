import 'package:flutter/material.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({super.key});
  static const routeName = '/preview';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Preview Screen')));
  }
}
