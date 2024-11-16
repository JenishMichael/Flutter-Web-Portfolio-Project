import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/constants/padding_left_right.dart';
// import 'dart:html' as html;

class Header extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const Header({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    double screenWidthMob = MediaQuery.of(context).size.width;
    double paddingValue = PaddingLeftRight.getPaddingleftRight(screenWidthMob);
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(
          left: paddingValue,
          right: paddingValue,
          top: 10,
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 243, 223, 192),
          borderRadius: BorderRadius.circular(7),
        ),
        width: double.infinity,
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [
                    Colors.orange.shade800,
                    Colors.orange.shade600,
                    Colors.amber.shade500,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      // html.window.location.reload();
                    },
                    child: const Text(
                      'JM',
                      style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0),
              child: IconButton(
                onPressed: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
