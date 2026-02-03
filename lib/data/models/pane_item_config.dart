import 'package:fluent_ui/fluent_ui.dart';
import 'package:prisma_wallpaper_manager_main/view/screens/about_screen.dart';
import 'package:prisma_wallpaper_manager_main/view/screens/collections_screen.dart';
import 'package:prisma_wallpaper_manager_main/view/screens/downloads_screen.dart';
import 'package:prisma_wallpaper_manager_main/view/screens/home_screen.dart';
import 'package:prisma_wallpaper_manager_main/view/screens/settings_screen.dart';

class PaneItemConfig {
  final String label;
  final IconData icon;
  final Widget page;

  const PaneItemConfig({
    required this.label,
    required this.icon,
    required this.page,
  });

  static final primaryPaneItems = [
    PaneItemConfig(label: "Home", icon: FluentIcons.home, page: HomeScreen()),
    PaneItemConfig(
      label: "Collections",
      icon: FluentIcons.photo_collection,
      page: CollectionsScreen(),
    ),
    PaneItemConfig(
      label: "Downloads",
      icon: FluentIcons.download,
      page: DownloadsScreen(),
    ),
  ];

  static final footerPaneItems = [
    PaneItemConfig(label: "About", icon: FluentIcons.info, page: AboutScreen()),
    PaneItemConfig(
      label: "Settings",
      icon: FluentIcons.settings,
      page: SettingsScreen(),
    ),
  ];
}
