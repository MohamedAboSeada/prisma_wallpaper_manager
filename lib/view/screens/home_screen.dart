import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:prisma_wallpaper_manager_main/utils/constants/app_routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: "");
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: PageHeader(
        title: TextBox(
          controller: _controller,
          onEditingComplete: () {
            if (_controller.text.isNotEmpty) {
              context.goNamed(
                AppRoutes.search,
                queryParameters: {"q": _controller.text},
              );
            }
          },
          placeholder: "Search for a wallpaper...",
        ),
      ),
      content: Center(
        child: Button(
          child: Text("Go To Details"),
          onPressed: () {
            context.goNamed("details", queryParameters: {"wall_id": "2000ha"});
          },
        ),
      ),
    );
  }
}
