import 'package:alinfo6_workshops/Screens/BottomNavBar.dart';
import 'package:alinfo6_workshops/Screens/Details.dart';
import 'package:alinfo6_workshops/Screens/MyCart.dart';
import 'package:alinfo6_workshops/Screens/MyFilmsGridView.dart';
import 'package:alinfo6_workshops/Screens/MyFilmsListView.dart';
import 'package:alinfo6_workshops/Screens/Profile.dart';
import 'package:alinfo6_workshops/Screens/SignIn.dart';
import 'package:alinfo6_workshops/Screens/SignUp.dart';
import 'package:alinfo6_workshops/Screens/TabBarNav.dart';
import 'package:flutter/material.dart' show AppBar, BuildContext, Center, ColorScheme, Colors, Column, FloatingActionButton, Icon, Icons, MainAxisAlignment, MaterialApp, Scaffold, State, StatefulWidget, StatelessWidget, Text, Theme, ThemeData, Widget, runApp;

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SignIn(),
        '/signup': (context) => const SignUp(),
        '/profile': (context) => const Profile(),
        '/myfilmslistview': (context) => const MyFilmsListView(),
        '/myfilmsgridview': (context) => const MyFilmsGridView(),
        '/mycart': (context) => const MyCart(),
        '/bottomnavbar': (context) => const BottomNavBar(),
        '/tabbarnav': (context) => const TabBarNav(),
      },
    );
  }
}


