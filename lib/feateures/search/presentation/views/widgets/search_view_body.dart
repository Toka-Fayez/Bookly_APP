import 'package:flutter/material.dart';
import 'custom_search_text_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(height: 20),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
