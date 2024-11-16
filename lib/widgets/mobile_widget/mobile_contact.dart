import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/constants/padding_left_right.dart';
import 'package:flutter_web_portfolio_project/screens/home/home.dart';
import 'package:flutter_web_portfolio_project/widgets/contact_container_builder.dart';
import 'package:flutter_web_portfolio_project/widgets/separtor.dart';

class MobileContact extends StatelessWidget {
  const MobileContact({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidthMob = MediaQuery.of(context).size.width;
    double paddingValue = PaddingLeftRight.getPaddingleftRight(screenWidthMob);
    return Container(
      key: contactKey,
      padding: EdgeInsets.fromLTRB(paddingValue, 0, paddingValue, 25),
      child: const Column(
        children: [
          Separator(
            separatorName: "Contact",
            gradient1: Colors.white,
            gradient2: Color(0xFFFF5722),
          ),
          SizedBox(
            height: 20,
          ),
          ContactContainerBuilder(initial: 0, length: 1),
          ContactContainerBuilder(initial: 1, length: 3),
        ],
      ),
    );
  }
}
