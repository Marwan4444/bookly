import 'package:bookly/Features/home/presentation/manger/smiliary_books/similary_books_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_error_message.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_listview_item.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
                return AspectRatio(
                  aspectRatio: 2.7 / 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12), 
                  child: Container(child: CachedNetworkImage(imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail, fit: BoxFit.fill)),
                )
                );
              },
            ),
          );
        } else if (state is SimilaryBooksFailure) {
          return CustomErrorMessage(errmessage: state.errMessage);
        } else {
          return CustomLoadingWidget(
            LoadedWidget: CustomListviewItem(
              ImageUrl: 'https://dummyimage.com/200x300/cccccc/ffffff',
            ),
            isLoading: true,
          );
        }
      },
    );
  }
}
