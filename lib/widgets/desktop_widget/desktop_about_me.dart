import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/constants/cv.dart';
import 'package:flutter_web_portfolio_project/constants/padding_left_right.dart';
import 'package:flutter_web_portfolio_project/provider/theme_provider.dart';
import 'package:flutter_web_portfolio_project/screens/home/home.dart';
import 'package:flutter_web_portfolio_project/widgets/separtor.dart';
import 'package:flutter_web_portfolio_project/widgets/themes_data.dart';
import 'package:provider/provider.dart';

class DesktopAboutMe extends StatelessWidget {
  const DesktopAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeDataValue = context.watch<ThemeProvider>().themeData;

    double screenWidthMob = MediaQuery.of(context).size.width;
    double paddingValue = PaddingLeftRight.getPaddingleftRight(screenWidthMob);
    return Container(
      child: Column(
        children: [
          Container(
            key: aboutMeKey,
            padding: EdgeInsets.only(
                top: 25, left: paddingValue, right: paddingValue),
            child: Column(
              children: [
                const Separator(
                  separatorName: "About",
                  gradient1: Colors.white,
                  gradient2: Color(0xFFFF5722),
                  separatorNameSize: 29,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 35),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: screenWidthMob < 1500 ? 16 : 18,
                        color: themeDataValue.primaryColor,
                      ),
                      children: const [
                        TextSpan(
                          text: "Hi, I’m Jenish Michael ",
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                        TextSpan(
                          text:
                              "a passionate software developer with expertise in Java and Flutter. "
                              "I completed my Bachelor of Science in Information Technology (B.Sc. IT) in 2023 at S.I.E.S College of Commerce and Economics."
                              " I build applications that focus on performance and user experience, and I thrive on solving complex problems and creating intuitive, user-friendly solutions."
                              " When I’m not coding, you might find me exploring new technologies, reading tech blogs, or working on personal projects.",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: (themeDataValue == lightTheme)
                    ? [
                        Colors.white,
                        const Color.fromARGB(255, 226, 189, 133),
                        // Color.fromARGB(255, 117, 178, 219)
                      ]
                    : [
                        const Color.fromARGB(255, 18, 18, 18),
                        const Color.fromARGB(255, 50, 50, 50),
                        const Color.fromARGB(255, 90, 90, 90),
                      ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            padding: EdgeInsets.only(right: paddingValue - 6.2),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: SizedBox(
                      width: screenWidthMob < 1500 ? 150 : 200,
                      height: screenWidthMob < 150 ? 22 : 35,
                      child: ElevatedButton(
                        onPressed: () {
                          return CV.downloadCv();
                        },
                        child: const Text(
                          "DOWNLOAD CV",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
