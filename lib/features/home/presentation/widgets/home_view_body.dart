import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/books_listview_with_details.dart';
import 'custom_featured_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomFeaturedListView(),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  EdgeInsets.only(top: 40.0, bottom: 22.0, left: 20, right: 20),
              child: Text("Best Seller", style: Styles.textStyle18),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: BooksListViewWithDetails(),
            ),
          ),
        ],
      ),
    );
  }
}
