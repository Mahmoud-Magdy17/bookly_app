import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_search_form_field.dart';
import 'search_listview.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchFormField(),
          Padding(
            padding:
                EdgeInsets.only(top: 8.0, bottom: 22.0, ),
            child: Text("Best Seller", style: Styles.textStyle18),
          ),
          Expanded(
            child: SearchListView(),
          ),
        ],
      ),
    );
  }
}
