import 'package:bookly_app/core/utils/functions.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsButton extends StatelessWidget {
  const BookDetailsButton({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        customLaunchUrl(url: url);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 50,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(color: Colors.white),
                child: Text(
                  "FREE",
                  style: Styles.textStyle16.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color(0xffef8262),
                ),
                child: Text(
                  "Free Preview",
                  style: Styles.textStyle16.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
