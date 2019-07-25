import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:intrare_app/pages/login.dart';

class FluroRouter {
  static Router router = Router();

  static Handler loginHandler = Handler(handlerFunc:
      (BuildContext context, Map<String, dynamic>params) =>LoginPage());

  static void setupRouter () {
    router.define(
      'login',
      handler: loginHandler
    );
  }
}
