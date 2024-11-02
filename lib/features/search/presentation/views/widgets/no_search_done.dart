import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NoSearchDone extends StatelessWidget {
  const NoSearchDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "No Search Done",
        style: Styles.textStyyle20.copyWith(color: Colors.white),
      ),
    );
  }
}
