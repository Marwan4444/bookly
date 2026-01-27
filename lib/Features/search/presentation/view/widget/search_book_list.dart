import 'package:bookly/Features/home/presentation/view/widget/book_listview_item.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_error_message.dart';
import 'package:bookly/Features/search/presentation/manger/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBookList extends StatelessWidget {
  const SearchBookList({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SearchBooksCubit, SearchBookState>(
        builder: (context, state) {
                    if (state is SearchBookSuccess) {
            final books = state.books;
            return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: books.length,
              itemBuilder: (context, index) {
                return BookListViewItem(bookModel: books[index]);
              },
            );
          }
          else if (state is SearchBookFailure) {
           return CustomErrorMessage(errmessage: state.errMessage);
          }
          else if (state is SearchBookLoading) {
            return const Center(child: CircularProgressIndicator());
          } 
          else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}