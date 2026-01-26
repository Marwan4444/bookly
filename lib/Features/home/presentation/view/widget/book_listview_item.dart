import 'dart:ui';

import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_listview_item.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_text_details_book.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel,});

  final BookModel bookModel ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookdetailsview', extra: bookModel);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 15, right: 12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 130,
                        child: AspectRatio(
                          aspectRatio: 2.7 / 4,
                          child: CustomListviewItem(ImageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,),
                        ),
                      ),

                      CustomTextDetailsBook(bookModel: bookModel,),
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


