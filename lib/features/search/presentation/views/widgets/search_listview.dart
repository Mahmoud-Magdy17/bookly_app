import 'package:bookly_app/core/widgets/custom_book_listview_item.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
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
