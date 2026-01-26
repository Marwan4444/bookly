import 'package:bookly/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_error_message.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_listview_item.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookListview extends StatelessWidget {
  const FeaturedBookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomListviewItem(
                    ImageUrl:
                        state.books[index].volumeInfo.imageLinks!.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorMessage(errmessage: state.errMessage);
        } else {
          return CustomLoadingWidget(LoadedWidget: CustomListviewItem(ImageUrl: 'https://dummyimage.com/200x300/cccccc/ffffff'), 
          isLoading: true,);
        }
      },
    );
  }
}
