import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/models/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manger/smiliary_books/similary_books_cubit.dart';
import 'package:bookly/Features/home/presentation/view/book_details_view.dart';
import 'package:bookly/Features/home/presentation/view/home_view.dart';
import 'package:bookly/Features/search/presentation/view/search_view.dart';
import 'package:bookly/Features/splash/presetation/view/splash_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
   GoRoute(
  path: '/bookdetailsview',
  builder: (context, state) {
    final bookModel = state.extra as BookModel;

    return BlocProvider(
      create: (context) => SimilaryBooksCubit(
        getIt.get<HomeRepoImpl>(),
      ),
      child: BookDetailsView(
        bookModel: bookModel,
      ),
    );
  },
),


      GoRoute(
        path: '/searchview',
        builder: (context, state) {
          return const SearchView();
        },
      ),
    ],
  );
}
