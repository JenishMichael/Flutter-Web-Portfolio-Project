import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/screens/home/home.dart';
import 'package:flutter_web_portfolio_project/widgets/separtor.dart';
import 'package:flutter_web_portfolio_project/widgets/work_add_card.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      key: projectKey,
      child: Column(
        children: [
          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1080),
            child: Column(
              children: [
                const Separator(
                  separatorName: "Selected",
                  gradient1: Colors.white,
                  gradient2: Color(0xFFFF5722),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    // WorkAddCard().addWorkCard(0, true),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        WorkAddCard().addWorkCard(0, false),
                        const SizedBox(width: 20),
                        WorkAddCard().addWorkCard(1, false),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        WorkAddCard().addWorkCard(2, false),
                        const SizedBox(width: 20),
                        // WorkAddCard().addWorkCard(3, false),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
