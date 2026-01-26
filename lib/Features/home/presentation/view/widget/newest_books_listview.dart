import 'package:bookly/Features/home/presentation/manger/newest-books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widget/book_listview_item.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return BookListViewItem(bookModel: state.books[index],);
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorMessage(errmessage: state.errMessage);
        } else {
          //return CustomLoadingWidget(LoadedWidget: BookListViewItem(bookModel:null,), isLoading: true,);
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
