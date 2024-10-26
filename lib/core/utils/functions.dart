import 'package:bookly_app/core/app_router/router.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

void navigatorPush(
    {context, viewId, }) {
  Navigator.push(context, MaterialPageRoute(
    builder: (ctx) {
      return AppRouter.router[viewId];
    },
  ));
}
