import 'package:bookly_app/core/app_router/router.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

Uri urlConverterToURI({required String url}) {
  return Uri.parse(url);
}

Future<void> customLaunchUrl({required String url}) async {
  if (!await launchUrl(urlConverterToURI(url: url))) {
    throw Exception('Could not launch $url');
  }
}
