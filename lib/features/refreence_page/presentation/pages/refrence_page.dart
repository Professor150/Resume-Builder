import 'package:flutter/material.dart';
import 'package:resume_builder/core/custom_widgets/custom_text.dart';
import 'package:resume_builder/core/custom_widgets/custom_text_form_fileds.dart';
import 'package:resume_builder/core/utils/constants/contstants.dart';
import 'package:resume_builder/features/education_page/presentation/widgets/help_sign_widget.dart';

class ReferencePage extends StatelessWidget {
  const ReferencePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = mediaQueryHeight(context);
    double width = mediaQueryWidth(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) => const HelpIconWidget(),
            ),
            icon: const Icon(Icons.help_center_rounded),
          ),
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.done,
              size: height * 0.04,
            ),
          ),
          SizedBox(
            width: width * 0.01,
          ),
        ],
        title: customText(context: context, text: 'Reference'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(height * 0.01),
              color: Colors.grey.shade500,
            ),
            margin: EdgeInsets.symmetric(horizontal: height * 0.015),
            height: height * 0.04,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customText(context: context, text: 'Reference 1'),
                SizedBox(
                  width: width * 0.4,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          buildTextFormField(
            textInputAction: TextInputAction.next,
            context: context,
            contentPadding: height * 0.023,
            lableText: 'Reference Name',
          ),
          buildTextFormField(
            textInputAction: TextInputAction.next,
            context: context,
            contentPadding: height * 0.023,
            lableText: 'Job Title',
          ),
          buildTextFormField(
            textInputAction: TextInputAction.next,
            context: context,
            contentPadding: height * 0.023,
            lableText: 'Company Name',
          ),
          buildTextFormField(
            textInputAction: TextInputAction.next,
            context: context,
            contentPadding: height * 0.023,
            lableText: 'Email',
          ),
          buildTextFormField(
            textInputAction: TextInputAction.next,
            context: context,
            contentPadding: height * 0.023,
            lableText: 'Phone',
          ),
          SizedBox(
            height: height * 0.26,
          ),
        ],
      ),
      floatingActionButton: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(height * 0.015)),
            fixedSize: Size(width * 0.33, height * 0.06)),
        icon: const Icon(Icons.add),
        label: customText(context: context, text: 'ADD'),
        onPressed: () {},
      ),
    );
  }
}
