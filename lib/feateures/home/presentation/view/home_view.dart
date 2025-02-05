import 'package:booklyapp/feateures/home/presentation/view/widgets/custom_appbar.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/featured_book_list_view.dart';
import 'package:booklyapp/feateures/home/presentation/view/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          FeaturedBookListView(),
        ]
      ),
    );
  }
}
