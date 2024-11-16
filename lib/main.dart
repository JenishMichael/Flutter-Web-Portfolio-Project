import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/provider/theme_provider.dart';
import 'package:flutter_web_portfolio_project/screens/home/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ThemeProvider())],
      child: Consumer<ThemeProvider>(
        builder: (context, ThemeProviderValue, child) => MaterialApp(
          title: "Jenish Michael",
          debugShowCheckedModeBanner: false,
          theme: ThemeProviderValue.themeData,
          home: const Home(),
        ),
      ),
    ),
  );
}
