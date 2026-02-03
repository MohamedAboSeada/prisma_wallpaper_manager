import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.id});

  final String id;

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
      content: Center(child: Text("Details Screen for wall $id")),
    );
  }
}
