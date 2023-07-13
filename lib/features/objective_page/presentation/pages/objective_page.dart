import 'package:flutter/material.dart';
import 'package:resume_builder/core/custom_widgets/custom_text.dart';
import 'package:resume_builder/core/custom_widgets/custom_text_form_fileds.dart';
import 'package:resume_builder/core/utils/constants/contstants.dart';
import 'package:resume_builder/features/objective_page/presentation/widgets/select_objective.dart';

class ObjectivePage extends StatelessWidget {
  const ObjectivePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = mediaQueryHeight(context);
    double width = mediaQueryWidth(context);
    return Scaffold(
      appBar: AppBar(
        title: customText(context: context, text: 'Objectives'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.done,
              size: height * 0.04,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            buildTextFormField(
              maxLines: 3,
              textInputAction: TextInputAction.done,
              context: context,
              contentPadding: height * 0.023,
              lableText: 'Objective',
            ),
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height * 0.015)),
              fixedSize: Size(width * 0.5, height * 0.06)),
          icon: const Icon(Icons.flag),
          label: customText(context: context, text: 'Select Objective'),
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SelectObjectiveWidget(),
              )),
        ),
      ),
    );
  }
}
