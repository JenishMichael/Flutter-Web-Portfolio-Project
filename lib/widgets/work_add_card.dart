import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/constants/project_works.dart';
import 'package:flutter_web_portfolio_project/constants/project_works_data.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkAddCard {
  Widget addWorkCard(int i, bool isImgLarge) {
    final ProjectWorks projectWork = ProjectWorksData.works[i];
    final int noOfTools = projectWork.projTools.length;

    return SizedBox(
      width: isImgLarge ? 880 : 438,
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Project Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  projectWork.projImg,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: isImgLarge ? 500 : 300,
                ),
              ),

              const SizedBox(height: 16),

              // Project Name
              Text(
                projectWork.projName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              // Project Description
              Text(
                projectWork.projDescription,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 14),

              // Tool Chips
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(noOfTools, (index) {
                    return workTool(projectWork.projTools[index], index);
                  }),
                ),
              ),

              const SizedBox(height: 20),

              // View Project Button
              Center(
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () async {
                    final Uri url = Uri.parse(projectWork.projLink);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url,
                          mode: LaunchMode.externalApplication);
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

  Widget workTool(String tool, int index) {
    return Padding(
      padding: EdgeInsets.only(left: index == 0 ? 0 : 8),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFEFEFEF),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Text(
          tool,
          style: const TextStyle(fontSize: 13),
        ),
      ),
    );
  }
}
