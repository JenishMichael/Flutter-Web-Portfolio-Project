import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/constants/padding_left_right.dart';
import 'package:flutter_web_portfolio_project/provider/theme_provider.dart';
import 'package:flutter_web_portfolio_project/screens/home/home.dart';
import 'package:flutter_web_portfolio_project/widgets/themes_data.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopIntro extends StatelessWidget {
  const DesktopIntro({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeDataValue = context.watch<ThemeProvider>().themeData;
    double screenWidthMob = MediaQuery.of(context).size.width;
    double paddingValue = PaddingLeftRight.getPaddingleftRight(screenWidthMob);
    return Column(
      key: homeKey,
      children: [
        Container(
          padding:
              EdgeInsets.only(left: paddingValue, right: paddingValue - 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hy! I Am\nJenish Michael ",
                      style: TextStyle(
                          color: themeDataValue.primaryColor,
                          fontSize: screenWidthMob < 1500 ? 35 : 45,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        "A software developer with expertise in Java and Flutter.",
                        style: TextStyle(
                          fontSize: screenWidthMob < 1500 ? 15 : 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: SizedBox(
                        width: screenWidthMob < 1500 ? 150 : 200,
                        height: screenWidthMob < 150 ? 22 : 35,
                        child: ElevatedButton(
                          onPressed: () {
                            Scrollable.ensureVisible(
                              contactKey.currentContext!,
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: const Text(
                            "CONTACT ME",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // if (screenWidthMob > 800)
              Image(
                width: screenWidthMob * 0.40,
                height: screenWidthMob * 0.40,
                image: const AssetImage(
                  "assets/image/intro_image.png",
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
          padding: EdgeInsets.only(top: 5, right: paddingValue - 6.2),
          child: Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () async {
                    const url = 'https://github.com/JenishMichael';
                    Uri uri = Uri.parse(url);
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    }
                  },
                  icon: Image(
                    image: (themeDataValue == lightTheme)
                        ? const AssetImage(
                            "assets/image/GitHub.png",
                          )
                        : const AssetImage(
                            "assets/image/GithubWhite30.png",
                          ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    Uri uri = Uri.parse(
                        "https://www.linkedin.com/in/jenish-michael-117a03279/");
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    }
                  },
                  icon: Image(
                    image: (themeDataValue == lightTheme)
                        ? const AssetImage(
                            "assets/image/LinkedIn.png",
                          )
                        : const AssetImage(
                            "assets/image/LinkedInWhite30.png",
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
