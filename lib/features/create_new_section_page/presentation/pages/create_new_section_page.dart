import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_builder/core/custom_widgets/custom_text.dart';
import 'package:resume_builder/core/custom_widgets/custom_text_form_fileds.dart';
import 'package:resume_builder/core/utils/constants/contstants.dart';
import 'package:resume_builder/features/create_new_section_page/presentation/provider/create_new_section_provider.dart';

class CreateNewSectionPage extends StatefulWidget {
  const CreateNewSectionPage({Key? key}) : super(key: key);

  @override
  State<CreateNewSectionPage> createState() => _CreateNewSectionPageState();
}

class _CreateNewSectionPageState extends State<CreateNewSectionPage> {
  late String selectedIcon; // Variable to store the selected icon

  @override
  void initState() {
    super.initState();
    selectedIcon = ''; // Set the initial selected icon as empty
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CreateNewSectionProvider>(context);
    double height = mediaQueryHeight(context);
    double width = mediaQueryWidth(context);

    Widget buildIcon(IconData icon, double size) {
      final isSelected = selectedIcon ==
          icon.codePoint.toString(); // Check if the icon is selected
      return GestureDetector(
        onTap: () {
          setState(() {
            if (isSelected) {
              selectedIcon = ''; // Deselect the icon if it is already selected
            } else {
              selectedIcon = icon.codePoint.toString(); // Select the icon
            }
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.deepOrange : null,
            border: isSelected
                ? Border.all(
                    color: Colors.deepOrange,
                    width: height * 0.01,
                  )
                : null,
            borderRadius: BorderRadius.circular(size / 3),
          ),
          child: Icon(
            icon,
            color: isSelected ? Colors.white : Colors.black54,
            size: size,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: customText(
          context: context,
          text: 'Create New Section',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.015),
            alignment: Alignment.center,
            height: height * 0.07,
            width: width,
            color: Colors.deepOrange.shade200,
            child: customText(
              context: context,
              text: 'Note : Click Toggle/Switch to add/Remove the Sections',
              fontSize: height * 0.018,
              color: Colors.black,
              letterSpacing: 1.3,
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(height * 0.01),
            ),
            margin: EdgeInsets.symmetric(horizontal: height * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTextFormField(
                  textInputAction: TextInputAction.next,
                  context: context,
                  contentPadding: height * 0.023,
                  lableText: 'Title',
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: height * 0.02),
                  child: customText(
                    context: context,
                    text: 'Selection Type',
                    color: Colors.black54,
                    fontSize: height * 0.02,
                  ),
                ),
                RadioListTile(
                  title: customText(
                      context: context,
                      text: "Simple List",
                      color: Colors.black),
                  value: "simple List",
                  groupValue: provider.options,
                  onChanged: (value) {
                    provider.setOption(value);
                  },
                ),
                RadioListTile(
                  title: customText(
                      context: context,
                      text: "Advanced(Title & details)",
                      color: Colors.black),
                  value: "advance",
                  groupValue: provider.options,
                  onChanged: (value) {
                    provider.setOption(value);
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(height * 0.01),
            ),
            margin: EdgeInsets.symmetric(horizontal: height * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: height * 0.02, vertical: height * 0.01),
                  child: customText(
                    context: context,
                    text: 'Selection Icon',
                    color: Colors.black54,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: height * 0.01, vertical: height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildIcon(Icons.person, height * 0.04),
                      buildIcon(Icons.school, height * 0.04),
                      buildIcon(Icons.account_circle_rounded, height * 0.04),
                      buildIcon(Icons.security, height * 0.04),
                      buildIcon(Icons.flag, height * 0.04),
                      buildIcon(Icons.person_3_sharp, height * 0.04),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: height * 0.01, vertical: height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildIcon(Icons.folder_copy_sharp, height * 0.04),
                      buildIcon(Icons.favorite, height * 0.04),
                      buildIcon(EvaIcons.award, height * 0.04),
                      buildIcon(Icons.language_outlined, height * 0.04),
                      buildIcon(EvaIcons.archive, height * 0.04),
                      buildIcon(Icons.balance, height * 0.04),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: height * 0.01, vertical: height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      buildIcon(Icons.person_add, height * 0.04),
                      SizedBox(
                        width: width * 0.08,
                      ),
                      buildIcon(Icons.book_online, height * 0.04),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height * 0.015)),
              fixedSize: Size(width * 0.33, height * 0.06)),
          child: customText(context: context, text: 'CREATE'),
          onPressed: () {},
        ),
      ),
    );
  }
}
