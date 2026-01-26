import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/manger/smiliary_books/similary_books_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widget/book_view_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel,});
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilaryBooksCubit>(context).fetchSimilaryBooks(category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 42, 0, 97),    
            Color.fromARGB(255, 85, 0, 160),   
            Color.fromARGB(255, 200, 60, 107), 
          ],
        ),  
      ),
      child: BookDetailsViewBody(bookModel: widget.bookModel,),);
  }
}