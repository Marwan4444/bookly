import 'package:bookly/Features/search/data/repo/search_repo_impl.dart';
import 'package:bookly/Features/search/presentation/manger/search_books_cubit/search_books_cubit.dart';
import 'package:bookly/Features/search/presentation/view/widget/glass_textfeild.dart';
import 'package:bookly/Features/search/presentation/view/widget/search_book_list.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBooksCubit(
        SearchRepoImpl(
          getIt.get<ApiService>(),
        ),),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            GlassTextfeild(), 
            SizedBox(height: 12),
             SearchBookList()],
        ),
      ),
    );
  }
}
