import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/constants/heading_list.dart';
import 'package:flutter_web_portfolio_project/constants/padding_left_right.dart';
import 'package:flutter_web_portfolio_project/provider/theme_provider.dart';
import 'package:flutter_web_portfolio_project/screens/home/home.dart';
import 'package:provider/provider.dart';

class DesktopViewHeader extends StatelessWidget {
  const DesktopViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeDataValue = context.watch<ThemeProvider>().themeData;

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
          color: themeDataValue.primaryColorLight,
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
                      html.window.location.reload();
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
            Row(
              children: [
                for (int i = 0; i < headingList.length - 1; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextButton(
                      onPressed: () {
                        switch (i) {
                          case 0:
                            Scrollable.ensureVisible(homeKey.currentContext!,
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeInOut);

                            break;
                          case 1:
                            Scrollable.ensureVisible(
                              aboutMeKey.currentContext!,
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeInOut,
                            );

                            break;
                          case 2:
                            Scrollable.ensureVisible(
                              skillskey.currentContext!,
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeInOut,
                            );

                            break;
                          case 3:
                            Scrollable.ensureVisible(
                              projectKey.currentContext!,
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeInOut,
                            );
                            break;
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                            themeDataValue.primaryColorLight),
                      ),
                      child: Text(
                        headingList[i],
                        style: TextStyle(
                          color: themeDataValue.primaryColor,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextButton(
                    onPressed: () {
                      Scrollable.ensureVisible(
                        contactKey.currentContext!,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      headingList[headingList.length - 1],
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
                // Switch(
                //   value: context
                //       .watch<ThemeProvider>()
                //       .isDarkMode, // Bind the current mode

                //   onChanged: (value) {
                //     context.read<ThemeProvider>().toggle(); // Toggle theme
                //   },
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
