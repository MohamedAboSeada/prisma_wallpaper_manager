import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key, required this.collectionId});
  final String collectionId;

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
      content: Center(
        child: Column(
          children: [
            Text('Collection $collectionId'),
            Button(
              child: Text("Go to image \"alskmdklask\""),
              onPressed: () {
                context.goNamed(
                  "details",
                  queryParameters: {"wall_id": "alskmdklask"},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
