import 'package:bookly_app/core/app_router/router.dart';
import 'package:flutter/material.dart';

void navigatorPush({context, viewId, var arg}) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (ctx) {
        return AppRouter.router[viewId];
      },
      settings: RouteSettings(
        arguments: arg,
      ),
    ),
  );
}
