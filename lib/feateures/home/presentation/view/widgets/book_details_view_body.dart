import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/book_rating.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/books_action.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/custom_details_app_bar.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(children: [
        const CustomDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17),
          child: const CustomBookImageItem(),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Judgle Book',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyarl fjskhf',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const BooksAction(),
      ]),
    );
  }
}
