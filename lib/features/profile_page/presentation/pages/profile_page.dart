import 'package:flutter/material.dart';
import 'package:resume_builder/core/custom_widgets/custom_text.dart';
import 'package:resume_builder/core/utils/constants/contstants.dart';
import 'package:resume_builder/features/add_more_section/presentation/pages/add_more_section_page.dart';
import 'package:resume_builder/features/education_page/presentation/pages/education_page.dart';
import 'package:resume_builder/features/experience_page/presentation/pages/experience_page.dart';
import 'package:resume_builder/features/objective_page/presentation/pages/objective_page.dart';
import 'package:resume_builder/features/personal_deatail_page/presentation/pages/personal_detail_page.dart';
import 'package:resume_builder/features/project_page/presentation/pages/project_page.dart';
import 'package:resume_builder/features/rearrange_heading_page/presentation/pages/rearrange_heading_page.dart';
import 'package:resume_builder/features/refreence_page/presentation/pages/refrence_page.dart';
import 'package:resume_builder/features/skills_page/presentation/pages/skills_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double height = mediaQueryHeight(context);
    double width = mediaQueryWidth(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        actions: [
          TextButton.icon(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shadowColor: Colors.deepOrange,
              backgroundColor: Colors.deepOrange,
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.remove_red_eye,
              color: Colors.white,
            ),
            label: customText(context: context, text: 'View CV'),
          ),
        ],
        elevation: 0,
        title: customText(context: context, text: 'Profile'),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
              Colors.deepOrange,
              Colors.white,
            ],
                stops: [
              0.57,
              -0
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: height * 0.005),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: _buildCard(
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PersonalDetailPage(),
                              ),
                            ),
                        icon: Icons.account_circle,
                        text: 'Personal \n Details'),
                  ),
                  Expanded(
                    child: _buildCard(
                      icon: Icons.school,
                      text: 'Educations',
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EducationPage(),
                          )),
                    ),
                  ),
                  Expanded(
                    child: _buildCard(
                      icon: Icons.person,
                      text: 'Experience',
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ExperiencePage(),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: height * 0.005),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: _buildCard(
                        icon: Icons.security,
                        text: 'Skills',
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SkillsPage(),
                              ),
                            )),
                  ),
                  Expanded(
                    child: _buildCard(
                      icon: Icons.flag,
                      text: 'Objective',
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ObjectivePage(),
                          )),
                    ),
                  ),
                  Expanded(
                    child: _buildCard(
                      icon: Icons.refresh,
                      text: 'Refrence',
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReferencePage(),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: height * 0.02,
              ),
              child: customText(
                context: context,
                text: 'More Sections',
                color: Colors.deepOrange,
                fontWeight: FontWeight.w500,
                fontSize: height * 0.028,
                letterSpacing: 1.4,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: height * 0.005, vertical: height * 0.02),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildCard(
                    icon: Icons.folder,
                    text: 'Projects',
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProjectPage(),
                        )),
                  ),
                  _buildCard(
                    icon: Icons.add,
                    text: 'Add More \nSections',
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddMoreSectionPage(),
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: height * 0.02,
              ),
              child: customText(
                context: context,
                text: 'Manage Sections',
                color: Colors.deepOrange,
                fontWeight: FontWeight.w500,
                fontSize: height * 0.028,
                letterSpacing: 1.4,
              ),
            ),
            Container(
              height: height * 0.11,
              padding: EdgeInsets.symmetric(
                  horizontal: height * 0.01, vertical: height * 0.01),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReArrangeHeadingPage(),
                      ));
                },
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(height * 0.01),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.03,
                        ),
                        const Icon(Icons.vertical_split),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        customText(
                            context: context,
                            text: 'Rearrange/Heading',
                            color: Colors.black),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({String? text, IconData? icon, Function()? onTap}) {
    double height = mediaQueryHeight(context);
    double width = mediaQueryWidth(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: height * 0.007),
        height: height * 0.15,
        width: width * 0.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(height * 0.01),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  offset: Offset(2, 1),
                  color: Colors.deepPurpleAccent,
                  blurRadius: 1),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.01,
            ),
            Icon(
              icon,
              size: height * 0.06,
              color: const Color.fromARGB(255, 84, 44, 179),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            customText(context: context, text: text, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
