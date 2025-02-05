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
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBookListView(),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (conext, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: const BestSellerListViewItem(),
            );
          }),
    );
  }
}
