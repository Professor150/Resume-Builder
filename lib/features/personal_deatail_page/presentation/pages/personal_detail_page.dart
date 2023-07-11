import 'package:flutter/material.dart';
import 'package:resume_builder/core/custom_widgets/custom_text.dart';
import 'package:resume_builder/core/custom_widgets/custom_text_form_fileds.dart';
import 'package:resume_builder/core/utils/constants/contstants.dart';

class PersonalDetailPage extends StatelessWidget {
  const PersonalDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = mediaQueryHeight(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.done,
              size: height * 0.05,
            ),
          ),
          SizedBox(
            width: height * 0.02,
          ),
        ],
        title: customText(context: context, text: 'Personal Details'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          buildTextFormField(
            context: context,
            contentPadding: height * 0.023,
            lableText: 'Name',
          ),
          buildTextFormField(
            maxLines: 2,
            context: context,
            contentPadding: height * 0.023,
            lableText: 'Address (Optional)',
          ),
          buildTextFormField(
            context: context,
            contentPadding: height * 0.023,
            lableText: 'Email',
          ),
          buildTextFormField(
              context: context,
              contentPadding: height * 0.023,
              lableText: 'Phone',
              keyboardType: TextInputType.number),
          buildTextFormField(
            context: context,
            contentPadding: height * 0.023,
            lableText: 'Date of Birth (Optional)',
          ),
          buildTextFormField(
            context: context,
            contentPadding: height * 0.023,
            lableText: 'Website (Optional)',
          ),
          buildTextFormField(
            context: context,
            contentPadding: height * 0.023,
            lableText: 'Linkedin (Optional)',
          ),
          SizedBox(
            height: height * 0.01,
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: height * 0.012),
              height: height * 0.1,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(height * 0.01),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: height * 0.02,
                  ),
                  Icon(
                    Icons.add_a_photo_rounded,
                    size: height * 0.1,
                  ),
                  SizedBox(
                    width: height * 0.03,
                  ),
                  customText(
                      context: context,
                      text: 'Photo (Optional)',
                      color: Colors.black)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
