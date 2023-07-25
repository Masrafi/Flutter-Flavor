import 'package:flutter/material.dart';

import 'config_flavor.dart';
import 'main_common.dart';

void main() {
  // Inject our own configurations
  // School 2

  mainCommon(
    FlavorConfig()
      ..appTitle = "School 1"
      ..imageLocation = "assets/images/one.png"
      ..apiEndpoint = {
        Endpoints.items: "api.flutterjunction.dev/items",
        Endpoints.details: "api.flutterjunction.dev/items"
      }
      ..theme = ThemeData.light().copyWith(
        primaryColor:const Color(0xFF123456),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
          backgroundColor:const Color(0xFF654321),
        ),
      ),
  );
}//