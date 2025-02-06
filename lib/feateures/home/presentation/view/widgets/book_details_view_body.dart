import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/book_rating.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/books_action.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/books_details_section.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/custom_details_app_bar.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/custom_book_image_item.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(children: [
              CustomDetailsAppBar(),
              BooksDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SimilarBooksSection(),
              SizedBox(
                height: 40,
              ),
            ]),
          ),
        )
      ],
    );
  }
}

