import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsButton extends StatelessWidget {
  const BookDetailsButton({super.key, required this.url});
  final String? url;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (url == null) {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height/2,
                // padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/2 - 50),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                ),
                child: Text(
                  "Preview isn't available",
                  style: Styles.textStyyle20.copyWith(color: Colors.white),
                ),
              );
            },
          );
        }else{
          
        }
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
