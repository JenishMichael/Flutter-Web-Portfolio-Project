import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/screens/home/home.dart';
import 'package:flutter_web_portfolio_project/widgets/mob_work_add_card.dart';
import 'package:flutter_web_portfolio_project/widgets/separtor.dart';

class MobWork extends StatelessWidget {
  final double screenWidth;

  const MobWork({required this.screenWidth, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      key: projectKey,
      children: [
        Container(
          margin: screenWidth >= 320
              ? const EdgeInsets.all(25)
              : EdgeInsets.all(screenWidth * 0.07),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Separator(
                separatorName: "Selected",
                gradient1: Colors.white,
                gradient2: Color(0xFFFF5722),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              MobWorkAddCard().addWorkCard(0, screenWidth),
              MobWorkAddCard().addWorkCard(1, screenWidth),
              MobWorkAddCard().addWorkCard(2, screenWidth),
            ],
          ),
        ),
      ],
    );
  }
}
