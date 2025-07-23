import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/constants/project_works.dart';
import 'package:flutter_web_portfolio_project/constants/project_works_data.dart';
import 'package:url_launcher/url_launcher.dart';

class MobWorkAddCard {
  Widget addWorkCard(int i, double screenWidth) {
    final ProjectWorks projectWork = ProjectWorksData.works[i];
    final int noOfTools = projectWork.projTools.length;

    return SizedBox(
      width: screenWidth >= 320 ? 280 : screenWidth * 1.05.clamp(0, 280),
      child: Card(
        color: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Project Image with fixed height and rounded corners
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  projectWork.projImg,
                  fit: BoxFit.cover,
                  height: 240,
                  width: double.infinity,
                ),
              ),

              const SizedBox(height: 14),

              // Project Name
              Text(
                projectWork.projName,
                style: TextStyle(
                  fontSize: screenWidth >= 320 ? 16 : screenWidth * 0.045,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              const SizedBox(height: 10),

              // Project Description
              Text(
                projectWork.projDescription,
                style: TextStyle(
                  fontSize: screenWidth >= 320 ? 14 : screenWidth * 0.042,
                  color: Colors.black87,
                  height: 1.5,
                ),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),

              const SizedBox(height: 12),

              // Tool Chips
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(noOfTools, (index) {
                    return workTool(
                      projectWork.projTools[index],
                      screenWidth,
                      index,
                    );
                  }),
                ),
              ),

              const SizedBox(height: 12),

              // View Project Button
              Center(
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () async {
                    final Uri url = Uri.parse(projectWork.projLink);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(
                        url,
                        mode: LaunchMode.externalApplication,
                      );
                    }
                  },
                  icon: const Icon(Icons.open_in_new),
                  label: const Text("View Project"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget workTool(String tool, double screenWidth, int index) {
    return Padding(
      padding: screenWidth >= 320
          ? EdgeInsets.only(left: index == 0 ? 0 : 8, top: 5, bottom: 8)
          : EdgeInsets.only(
              left: index == 0 ? 0 : screenWidth * 0.02,
              top: screenWidth * 0.015,
              bottom: screenWidth * 0.015),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFEFEFEF),
          borderRadius: BorderRadius.circular(5),
        ),
        padding: screenWidth >= 320
            ? const EdgeInsets.symmetric(vertical: 6, horizontal: 12)
            : EdgeInsets.symmetric(
                vertical: screenWidth * 0.03, horizontal: screenWidth * 0.05),
        child: Text(
          tool,
          style: TextStyle(
            fontSize: screenWidth >= 320 ? 13 : screenWidth * 0.04,
          ),
        ),
      ),
    );
  }
}
