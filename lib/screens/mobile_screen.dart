import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/widgets/mobile_view_header.dart';
import 'package:flutter_web_portfolio_project/widgets/mobile_widget/mobile_about_me.dart';
import 'package:flutter_web_portfolio_project/widgets/mobile_widget/mobile_contact.dart';
import 'package:flutter_web_portfolio_project/widgets/mobile_widget/mobile_intro.dart';
import 'package:flutter_web_portfolio_project/widgets/mobile_widget/mobile_skills.dart';

class MobileScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const MobileScreen({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderViewHeader(scaffoldKey: scaffoldKey),
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntroMessage(),
                MobileAboutMe(),
                MobileSkills(),
                MobileContact(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
