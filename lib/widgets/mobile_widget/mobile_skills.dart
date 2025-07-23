import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/constants/padding_left_right.dart';
import 'package:flutter_web_portfolio_project/screens/home/home.dart';
import 'package:flutter_web_portfolio_project/widgets/separtor.dart';
import 'package:flutter_web_portfolio_project/widgets/skill_container_builder.dart';

class MobileSkills extends StatelessWidget {
  const MobileSkills({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidthMob = MediaQuery.of(context).size.width;
    double paddingValue = PaddingLeftRight.getPaddingleftRight(screenWidthMob);
    return Container(
      key: skillskey,
      padding: EdgeInsets.fromLTRB(paddingValue, 25, paddingValue, 25),
      child: const Column(
        children: [
          Separator(
            separatorName: "Skills",
            gradient1: Colors.white,
            gradient2: Color(0xFFFF5722), // Dark Orange
          ),
          SizedBox(
            height: 25,
          ),
          SkillContainerBuilder(initial: 0, length: 3),
          SkillContainerBuilder(initial: 3, length: 6),
          SkillContainerBuilder(initial: 6, length: 9),
        ],
      ),
    );
  }
}
