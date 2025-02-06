import 'package:booklyapp/feateures/home/presentation/view/book_details_view.dart';
import 'package:booklyapp/feateures/home/presentation/view/home_view.dart';
import 'package:booklyapp/feateures/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const KBookDetailsView = '/BookDetailsView';

  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
