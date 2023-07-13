import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_builder/core/custom_widgets/custom_text.dart';
import 'package:resume_builder/core/utils/constants/contstants.dart';
import 'package:resume_builder/features/add_more_section/presentation/provider/switch_provider.dart';
import 'package:resume_builder/features/create_new_section_page/presentation/pages/create_new_section_page.dart';

import '../../../education_page/presentation/widgets/help_sign_widget.dart';

class AddMoreSectionPage extends StatefulWidget {
  const AddMoreSectionPage({super.key});

  @override
  State<AddMoreSectionPage> createState() => _AddMoreSectionPageState();
}

class _AddMoreSectionPageState extends State<AddMoreSectionPage> {
  @override
  Widget build(BuildContext context) {
    double height = mediaQueryHeight(context);
    double width = mediaQueryWidth(context);
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            alignment: Alignment.center,
            fixedSize: Size(width * 0.6, height * 0.05),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(height * 0.012),
            ),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CreateNewSectionPage(),
                ));
          },
          child: customText(context: context, text: 'Create new sections'),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) => const HelpIconWidget(),
            ),
            icon: const Icon(Icons.help_center_rounded),
          ),
          SizedBox(
            width: width * 0.01,
          ),
        ],
        title: customText(context: context, text: 'Add More Section'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: height * 0.015),
              alignment: Alignment.center,
              height: height * 0.07,
              width: width,
              color: Colors.deepOrange.shade200,
              child: customText(
                  context: context,
                  text: 'Note : Click Toogle/Switch to add/Remove the Sections',
                  fontSize: height * 0.018,
                  color: Colors.black,
                  letterSpacing: 1.3),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            buildCardForSwitches(context: context, text: 'Reference', index: 1),
            buildCardForSwitches(
                context: context, text: 'Additional Information', index: 2),
            buildCardForSwitches(context: context, text: 'Interests', index: 3),
            buildCardForSwitches(context: context, text: 'Language', index: 4),
            buildCardForSwitches(
                context: context, text: 'Achievements & Awards', index: 5),
            buildCardForSwitches(
                context: context, text: 'Activities', index: 6),
            buildCardForSwitches(
                context: context, text: 'Publication', index: 7),
            buildCardForSwitches(context: context, text: 'Signature', index: 8),
          ],
        ),
      ),
    );
  }

  buildCardForSwitches({
    required BuildContext context,
    String? text,
    required int index,
  }) {
    double height = mediaQueryHeight(context);
    double width = mediaQueryWidth(context);
    final switchProvider = Provider.of<SwitchProvider>(context);
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            height * 0.013,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: height * 0.02),
        height: height * 0.07,
        width: width * 0.95,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customText(
              context: context,
              text: text,
              color: Colors.black,
            ),
            Switch(
              focusColor: Colors.deepOrange.shade300,
              value: switchProvider.switchValues[index],
              onChanged: (value) => switchProvider.setSwitchValue(index, value),
            ),
          ],
        ),
      ),
    );
  }
}
