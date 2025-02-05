import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/custom_appbar.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/featured_book_list_view.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBookListView(),
          SizedBox(
            height: 24,
          ),
          Text(
            "Best Seller",
            style: Styles.textStyle18,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
