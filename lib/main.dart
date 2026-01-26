import 'package:bookly/Features/home/data/models/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/manger/newest-books_cubit/newest_books_cubit.dart';

import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



void main() {
  setupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
   providers: [
    BlocProvider(
      create: (context) => FeaturedBooksCubit(
       getIt.get<HomeRepoImpl>(),
      )..fetchFeaturedBooks(),
    ),
    BlocProvider(
      create: (context) => NewestBooksCubit(
       getIt.get<HomeRepoImpl>(),
      )..fetchNewestBooks(),
    ),
  ],

  child: MaterialApp.router(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: kPrimeryColor,
      textTheme: ThemeData.dark()
          .textTheme
          .apply(fontFamily: 'Montserrat'),
    ),
    routerConfig: AppRouter.router,
  ),
);

  } 
}

