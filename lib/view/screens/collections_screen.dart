import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';

class CollectionsScreen extends StatelessWidget {
  const CollectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      content: Center(
        child: Button(
          child: Text("Open Collection 1"),
          onPressed: () {
            context.goNamed(
              "collection",
              queryParameters: {"collection_id": "1"},
            );
          },
        ),
      ),
    );
  }
}
