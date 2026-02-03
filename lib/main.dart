import 'package:fluent_ui/fluent_ui.dart';
import 'package:prisma_wallpaper_manager_main/utils/router/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return FluentApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: FluentThemeData(brightness: Brightness.dark),
      routerConfig: AppRouter.routerConfig,
    );
  }
}
