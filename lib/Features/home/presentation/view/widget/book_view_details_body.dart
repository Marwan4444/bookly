import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/view/widget/book%20_details_rating.dart';
import 'package:bookly/Features/home/presentation/view/widget/book_details_image.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_appbar_detailsview.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_button_detailview.dart';
import 'package:bookly/Features/home/presentation/view/widget/similary_book_list.dart';
import 'package:bookly/constants.dart';

import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel, });
  final BookModel bookModel;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: CustomAppbarDetailsview(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BookDetailsImage(
                ImageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? 'https://dummyimage.com/200x300/cccccc/ffffff',),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookModel.volumeInfo.title ?? '',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                        fontFamily: kGtSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 8),

                    Text(
                      "${bookModel.volumeInfo.authors?[0]}" ,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(height: 16),
                    BookDetailsRating(rating: bookModel.volumeInfo.averageRating ?? 0, count: bookModel.volumeInfo.ratingsCount ?? 0,),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              CustomButtonDetialsView(),
              const SizedBox(height: 35),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also like",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: kGtSectraFine,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SimilaryBookList(),
            ],
          ),
        ),
      ),
    );
  }
}
