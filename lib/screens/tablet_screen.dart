import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/widgets/mobile_view_header.dart';
import 'package:flutter_web_portfolio_project/widgets/mobile_widget/mob_work.dart';
import 'package:flutter_web_portfolio_project/widgets/mobile_widget/mobile_about_me.dart';
import 'package:flutter_web_portfolio_project/widgets/mobile_widget/mobile_contact.dart';
import 'package:flutter_web_portfolio_project/widgets/mobile_widget/mobile_skills.dart';
import 'package:flutter_web_portfolio_project/widgets/tablet_widget/tablet_intro.dart';

class TabletScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const TabletScreen({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderViewHeader(scaffoldKey: scaffoldKey),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TabletHome(),
                const MobileAboutMe(),
                MobWork(screenWidth: MediaQuery.sizeOf(context).width),
                const MobileSkills(),
                const MobileContact(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
