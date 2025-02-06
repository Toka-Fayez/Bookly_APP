import 'package:booklyapp/feateures/home/presentation/view/book_details_view.dart';
import 'package:booklyapp/feateures/home/presentation/view/home_view.dart';
import 'package:booklyapp/feateures/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../feateures/search/presentation/views/search_view.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';


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
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
       GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
