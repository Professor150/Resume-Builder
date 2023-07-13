import 'package:flutter/material.dart';
import 'package:resume_builder/core/custom_widgets/custom_text.dart';
import 'package:resume_builder/core/utils/constants/contstants.dart';

class ReArrangeHeadingPage extends StatefulWidget {
  const ReArrangeHeadingPage({Key? key}) : super(key: key);

  @override
  _ReArrangeHeadingPageState createState() => _ReArrangeHeadingPageState();
}

class _ReArrangeHeadingPageState extends State<ReArrangeHeadingPage> {
  List<String> sections = [
    'Objective',
    'Education',
    'Experience',
    'Skills',
    'Projects',
    'Certifications',
  ];

  List<String> originalOrder = [
    'Objective',
    'Education',
    'Experience',
    'Skills',
    'Projects',
    'Certifications',
  ];

  Map<String, IconData> sectionIcons = {
    'Objective': Icons.assistant,
    'Education': Icons.school,
    'Experience': Icons.work,
    'Skills': Icons.build,
    'Projects': Icons.code,
    'Certifications': Icons.star,
  };

  @override
  Widget build(BuildContext context) {
    double height = mediaQueryHeight(context);
    double width = mediaQueryWidth(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: customText(context: context, text: 'Rearrange/Edit Headings'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.015),
            alignment: Alignment.center,
            height: height * 0.09,
            width: width,
            color: Colors.deepOrange.shade200,
            child: customText(
              context: context,
              text:
                  'Note : Touch & Drag the Title to Rearrange the Sections.\nThe Order will be reflected only in the resume and not in \nthe profile section.Edit section header.',
              fontSize: height * 0.014,
              color: Colors.black,
              letterSpacing: 1.3,
            ),
          ),
          Expanded(
            child: ReorderableListView(
              key: const Key('reorderable_list'),
              children: sections.asMap().entries.map((entry) {
                final index = entry.key;
                final section = entry.value;
                final icon = sectionIcons[section] ?? Icons.drag_handle;
                return _buildCard(
                  context: context,
                  text: section,
                  icon: icon,
                  key: ValueKey(section),
                  index: index,
                );
              }).toList(),
              onReorder: (oldIndex, newIndex) {
                setState(() {
                  if (newIndex > oldIndex) {
                    newIndex -= 1;
                  }
                  final section = sections.removeAt(oldIndex);
                  sections.insert(newIndex, section);
                });
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(height * 0.015),
            ),
            fixedSize: Size(width * 0.33, height * 0.06),
          ),
          child: customText(context: context, text: 'Reset Order'),
          onPressed: () {
            setState(() {
              sections = List<String>.from(originalOrder);
            });
          },
        ),
      ),
    );
  }

  Widget _buildCard({
    required BuildContext context,
    required String text,
    required IconData icon,
    required Key key,
    required int index,
  }) {
    double height = mediaQueryHeight(context);

    return Card(
      margin: EdgeInsets.symmetric(
          horizontal: height * 0.01, vertical: height * 0.006),
      key: key,
      child: ListTile(
        leading: Icon(icon),
        title: customText(
          context: context,
          text: text,
          color: Colors.black,
        ),
        trailing: const Icon(Icons.edit),
        key: ValueKey(index),
      ),
    );
  }
}
