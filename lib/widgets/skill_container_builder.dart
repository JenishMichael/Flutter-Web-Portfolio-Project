import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/constants/skills_list.dart';

class SkillContainerBuilder extends StatelessWidget {
  final int initial;
  final int length;

  const SkillContainerBuilder({
    super.key,
    required this.initial,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidthMob = MediaQuery.of(context).size.width;

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        for (int i = initial; i < length; i++)
          Container(
            // color: Colors.grey,
            width: screenWidthMob < 1000 ? 90 : 140,
            height: screenWidthMob < 1000 ? 90 : 140,
            child: Column(
              children: [
                Image(
                  image: AssetImage(screenWidthMob < 1000
                      ? "assets/image/${skillImg48[i]}"
                      : "assets/image/${skillImg60[i]}"),
                ),
                Text(
                  skillName[i],
                )
              ],
            ),
          ),
      ],
    );
  }
}
//


//


//


//
