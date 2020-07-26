import 'package:coka/pages/about-page.dart';
import 'package:coka/pages/home-page.dart';
import 'package:coka/pages/tutorial-page.dart';
import 'package:coka/providers/creature-provider.dart';
import 'package:coka/providers/player-provider.dart';
import 'package:coka/providers/tutorial-provider.dart';
import 'package:coka/services/injector.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  Injector.setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PlayerProvider()),
        ChangeNotifierProvider(create: (_) => CreatureProvider()),
        ChangeNotifierProvider(create: (_) => TutorialProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/tutorial': (context) => TutorialPage(),
          '/about': (context) => AboutPage(),
        },
      ),
    );
  }
}
