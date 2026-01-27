import 'package:bookly/Features/home/presentation/manger/smiliary_books/similary_books_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_error_message.dart';
import 'package:bookly/Features/home/presentation/view/widget/similary_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilaryBookList extends StatelessWidget {
  const SimilaryBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilaryBooksCubit, SimilaryBooksState>(
      builder: (context, state) {
        if (state is SimilaryBooksSuccess) {
          return SizedBox(
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                return SimilaryBookItem(
                  imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,
                );
              },
            ),
          );
        } else if (state is SimilaryBooksFailure) {
          return CustomErrorMessage(errmessage: state.errMessage);
        }
         else {
          return SizedBox(
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (_, __) {
                return const SimilaryBookItem(imageUrl: '', isSkeleton: true);
              },
            ),
          );
        }
      },
    );
  }
}
