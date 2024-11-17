import 'package:flutter/material.dart';
import 'package:wallet_app/Screens/TeamLeader2.dart';
import 'package:wallet_app/Screens/walletAppScreen.dart';

import 'Screens/Directfbanetwork.dart';
import 'Screens/bounce.dart';
import 'Screens/fbascreen.dart';
import 'Screens/nonfbamember.dart';
import 'Screens/referralscreen.dart';
import 'Screens/table.dart';
import 'Screens/textfieldscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WalletScreen(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
