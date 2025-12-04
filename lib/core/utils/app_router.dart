import 'package:bookly/Features/home/presentation/view/home_view.dart';
import 'package:bookly/Features/splash/presetation/view/splash_view.dart';

import 'package:go_router/go_router.dart';

abstract class AppRouter {
 static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: '/homeview',
        builder: (context, state) {
          return const HomeView();
        },
      ),
    ],
  );
}
