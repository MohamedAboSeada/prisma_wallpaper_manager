import 'package:go_router/go_router.dart';
import 'package:prisma_wallpaper_manager_main/utils/constants/app_routes.dart';
import 'package:prisma_wallpaper_manager_main/view/screens/about_screen.dart';
import 'package:prisma_wallpaper_manager_main/view/screens/collection_screen.dart';
import 'package:prisma_wallpaper_manager_main/view/screens/collections_screen.dart';
import 'package:prisma_wallpaper_manager_main/view/screens/details_screen.dart';
import 'package:prisma_wallpaper_manager_main/view/screens/downloads_screen.dart';
import 'package:prisma_wallpaper_manager_main/view/screens/home_screen.dart';
import 'package:prisma_wallpaper_manager_main/view/screens/main_app_shell.dart';
import 'package:prisma_wallpaper_manager_main/view/screens/search_results_screen.dart';
import 'package:prisma_wallpaper_manager_main/view/screens/settings_screen.dart';

class AppRouter {
  static const initialRoute = '/';

  static final routerConfig = GoRouter(
    initialLocation: initialRoute,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            MainAppShell(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.home,
                builder: (context, state) => const HomeScreen(),
                routes: [
                  GoRoute(
                    name: AppRoutes.search,
                    path: AppRoutes.search,
                    builder: (context, state) {
                      final query = state.uri.queryParameters["q"];
                      return SearchResultsScreen(query: query ?? "");
                    },
                  ),
                  GoRoute(
                    name: AppRoutes.details,
                    path: AppRoutes.details,
                    builder: (context, state) {
                      final wallId = state.uri.queryParameters['wall_id']!;
                      return DetailsScreen(id: wallId);
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.collections,
                builder: (context, state) => const CollectionsScreen(),
                routes: [
                  GoRoute(
                    name: AppRoutes.collection,
                    path: AppRoutes.collection,
                    builder: (context, state) {
                      final id = state.uri.queryParameters["collection_id"];
                      return CollectionScreen(collectionId: id ?? "");
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.downloads,
                builder: (context, state) => const DownloadsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.about,
                builder: (context, state) => const AboutScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.settings,
                builder: (context, state) => const SettingsScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
