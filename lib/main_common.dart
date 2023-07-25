import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'config_flavor.dart';

var flavorConfigProvider;

void mainCommon(FlavorConfig config) {
  flavorConfigProvider = StateProvider((ref) => config);
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    final config = ref.read(flavorConfigProvider);

    return MaterialApp(
      title: config.appTitle,
      theme: config.theme,
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}//

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    print(ref.read(flavorConfigProvider.notifier).state.appTitle);
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.read(flavorConfigProvider).appTitle),
      ),
      body: Image.asset(
        ref.read(flavorConfigProvider).imageLocation!,
        fit: BoxFit.fill,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}

//https://www.youtube.com/watch?v=3tiy5M26H8c&t=1024s