import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.errorMsg});
  final String errorMsg;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMsg,
        style: Styles.textStyyle20,
      ),
    );
  }
}
