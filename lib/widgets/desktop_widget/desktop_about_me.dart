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
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 35, left: 100, right: 100),
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
                              "a passionate Java backend developer with hands-on experience building real-world applications using Spring Boot, REST APIs, JWT authentication, and microservices architecture with Eureka, API Gateway, and Feign. "
                              "I hold a B.Sc. in Information Technology (2023) from S.I.E.S College of Commerce and Economics. I enjoy solving backend challenges, designing scalable APIs, and ensuring clean code and performance. "
                              "I'm comfortable with frontend tools like React and follow clean architecture principles in all my projects. "
                              "My strength lies in writing secure, testable code and building scalable backend systems that can grow with user demand. "
                              "I’m actively seeking opportunities where I can contribute to impactful products, collaborate with experienced teams, and keep growing as a developer. "
                              "In addition, I’ve worked with Flutter for cross-platform mobile apps and enjoy experimenting with mobile UI design in my spare time.",
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
