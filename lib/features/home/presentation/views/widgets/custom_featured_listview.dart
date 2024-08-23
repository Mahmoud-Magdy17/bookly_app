import 'package:flutter/material.dart';

import 'custom_featured_list_item.dart';

class CustomFeaturedListView extends StatelessWidget {
  const CustomFeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.27,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return const CustomFeaturedListItem();
        }),
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 8,
          );
        },
        itemCount: 5,
      ),
    );
  }
}
