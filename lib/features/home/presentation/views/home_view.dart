import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_best_seller_listview_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_featured_listview.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(height: 32),
          CustomFeaturedListView(),
          SizedBox(height: 40),
          Text("Best Seller", style: Styles.textStyle18),
          SizedBox(height: 22),
          CustomBestSellerListViewItem(),
        ],
      ),
    ));
  }
}
