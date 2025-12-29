import 'package:flutter/material.dart';

class SearchResultsScreen extends StatelessWidget {
  const SearchResultsScreen({super.key});
  static const routeName = '/search-results';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Search Results Screen')));
  }
}
