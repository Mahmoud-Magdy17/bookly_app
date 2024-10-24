
import 'package:flutter/material.dart';

import 'custom_book_listview_item.dart';

class BooksListViewWithDetails extends StatelessWidget {
  const BooksListViewWithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const CustomBookListViewItem();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 20,
        );
      },
    );
  }
}
