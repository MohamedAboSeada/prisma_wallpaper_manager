import 'package:flutter/material.dart';

class MainAppShell extends StatelessWidget {
  const MainAppShell({super.key});
  static const routeName = '/shell';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Main App Shell')));
  }
}
