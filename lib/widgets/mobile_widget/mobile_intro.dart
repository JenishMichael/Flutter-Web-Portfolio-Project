import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/constants/padding_left_right.dart';
import 'package:flutter_web_portfolio_project/provider/theme_provider.dart';
import 'package:flutter_web_portfolio_project/screens/home/home.dart';
import 'package:flutter_web_portfolio_project/widgets/themes_data.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroMessage extends StatelessWidget {
  const IntroMessage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeDataValue = context.watch<ThemeProvider>().themeData;
    double screenWidthMob = MediaQuery.of(context).size.width;
    double paddingValue = PaddingLeftRight.getPaddingleftRight(screenWidthMob);
    return Column(
      children: [
        Container(
          key: homeKey,
          width: double.infinity,
          padding: EdgeInsets.only(
              left: paddingValue, right: paddingValue, top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              Text(
                "Hy! I Am\nJenish Michael ",
                style: TextStyle(
                    color: themeDataValue.primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 3),
                child: Text(
                  "A software developer with expertise in Java and Flutter.",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 100),
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
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () async {
                    const url = 'https://github.com/JenishMichael';
                    Uri uri = Uri.parse(url);
                    if (await canLaunchUrl(uri)) {
                      print("can launch ");
                      await launchUrl(uri);
                      print(" launched");
                    } else {
                      print('Could not launch $url');
                    }
                  },
                  icon: Image(
                    image: (themeDataValue == lightTheme)
                        ? const AssetImage(
                            "assets/image/GitHub.png",
                          )
                        : const AssetImage(
                            "assets/image/GitHubWhite30.png",
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
