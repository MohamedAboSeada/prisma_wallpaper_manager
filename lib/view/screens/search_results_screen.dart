import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';

class SearchResultsScreen extends StatelessWidget {
  const SearchResultsScreen({super.key, required this.query});
  final String query;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: PageHeader(
        title: IconButton(
          icon: Icon(FluentIcons.back),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            }
          },
        ),
      ),
      content: Center(child: Text("Query is $query")),
    );
  }
}
