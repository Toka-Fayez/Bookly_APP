import 'package:booklyapp/feateures/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

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
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: BestSellerListViewItem(),
            );
          }),
    );
  }
}