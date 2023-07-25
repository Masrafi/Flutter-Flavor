import 'package:flutter/material.dart';

import 'config_flavor.dart';
import 'main_common.dart';

void main() {
  // Inject our own configurations
  // School One

  mainCommon(
    FlavorConfig()
      ..appTitle = "School 2"
      ..apiEndpoint = {
        Endpoints.items: "flutterjunction.api.dev/items",
        Endpoints.details: "flutterjunction.api.dev/item"
      }
      ..imageLocation = "assets/images/two.png"
      ..theme = ThemeData.dark(),
  );
}
//