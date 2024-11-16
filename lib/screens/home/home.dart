import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/provider/theme_provider.dart';
import 'package:flutter_web_portfolio_project/screens/desktop_screen.dart';
import 'package:flutter_web_portfolio_project/screens/mobile_screen.dart';
import 'package:flutter_web_portfolio_project/screens/tablet_screen.dart';
import 'package:flutter_web_portfolio_project/widgets/drawer_app_bar.dart';
import 'package:flutter_web_portfolio_project/widgets/loading.dart';
import 'package:flutter_web_portfolio_project/widgets/responsive_builder.dart';
import 'package:flutter_web_portfolio_project/widgets/themes_data.dart';
import 'package:provider/provider.dart';

final GlobalKey homeKey = GlobalKey();
final GlobalKey aboutMeKey = GlobalKey();
final GlobalKey skillskey = GlobalKey();
final GlobalKey contactKey = GlobalKey();

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> fetchDate() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, ThemeProviderValue, child) => Scaffold(
        backgroundColor: ThemeProviderValue.themeData.scaffoldBackgroundColor,
        key: scaffoldKey,
        endDrawer: Drawer(
          backgroundColor: const Color(0xFFFFC18A),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: (ThemeProviderValue.themeData == lightTheme)
                    ? [
                        Colors.white,
                        const Color.fromARGB(255, 244, 219, 181),
                      ]
                    : [
                        const Color.fromARGB(255, 18, 18, 18),
                        const Color.fromARGB(255, 35, 35, 35),
                        const Color.fromARGB(255, 60, 60, 60),
                      ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: const DrawerAppBar(),
          ),
        ),
        body: FutureBuilder(
            future: fetchDate(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Loading();
              } else {
                return ResponsiveBuilder(
                  mobile: MobileScreen(scaffoldKey: scaffoldKey),
                  tablet: TabletScreen(scaffoldKey: scaffoldKey),
                  desktop: DesktopScreen(scaffoldKey: scaffoldKey),
                );
              }
            }),
      ),
    );
  }
}
