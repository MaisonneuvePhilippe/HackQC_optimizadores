import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_stats_avanc.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_acceuil.dart';
import './xd_ouverture.dart';
import './xd_profil.dart';
import './xd_rglage_semaine.dart';
import './xd_rglage_semaine.dart';
import './xd_stats_avanc.dart';
import './xd_profil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './xd_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: XDAcceuil(),
    );
  }
}
