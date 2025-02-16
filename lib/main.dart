import 'package:flutter/material.dart';
import 'package:mk_watchshop/pages/welcomePage.dart';
import 'package:mk_watchshop/utils/watchProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Watchprovider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Welcomepage());
  }
}
