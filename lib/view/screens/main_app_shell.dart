import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:prisma_wallpaper_manager_main/data/models/pane_item_config.dart';

class MainAppShell extends StatelessWidget {
  const MainAppShell({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: NavigationAppBar(
        automaticallyImplyLeading: false,
        title: Text("Prisma Wallpaper Manager"),
        leading: Image.asset("assets/logo.png", width: 24.0, height: 24.0),
      ),
      pane: NavigationPane(
        selected: navigationShell.currentIndex,
        onChanged: (index) => navigationShell.goBranch(index),
        displayMode: PaneDisplayMode.compact,
        items: PaneItemConfig.primaryPaneItems
            .map(
              (item) => PaneItem(
                icon: Icon(item.icon),
                title: Text(item.label),
                body: KeyedSubtree(
                  key: ValueKey(navigationShell.currentIndex),
                  child: navigationShell,
                ),
              ),
            )
            .toList()
            .cast<NavigationPaneItem>(),
        footerItems: [
          PaneItemSeparator(),
          ...PaneItemConfig.footerPaneItems.map(
            (item) => PaneItem(
              icon: Icon(item.icon),
              body: KeyedSubtree(
                key: ValueKey(navigationShell.currentIndex),
                child: navigationShell,
              ),
              title: Text(item.label),
            ),
          ),
        ],
      ),
    );
  }
}
