import 'package:flutter/material.dart';
import 'package:resume_builder/core/custom_widgets/custom_text.dart';
import 'package:resume_builder/core/utils/constants/contstants.dart';

class HelpIconWidget extends StatelessWidget {
  const HelpIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = mediaQueryHeight(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.03,
          ),
          Center(
            child: customText(
                context: context,
                text: 'Education',
                color: Colors.black,
                fontSize: height * 0.03,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: height * 0.014),
            child: customText(
                context: context,
                text: 'MBA in Marketing',
                color: Colors.black54),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          _buildCard(
              context: context,
              text: 'Harvard University , Cambridge, GA\nGPA 8.0\n2010 '),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: height * 0.014),
            child: customText(
                context: context,
                text: 'Computer Science',
                color: Colors.black54),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          _buildCard(
              context: context,
              text:
                  'Kathmandu University, Trivuwan University\nGPA 8.0\n2015 '),
        ],
      ),
    );
  }

  _buildCard({
    BuildContext? context,
    String? text,
  }) {
    double height = mediaQueryHeight(context!);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: height * 0.005),
      width: double.infinity,
      height: height * 0.12,
      child: Card(
        color: Colors.grey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(height * 0.01),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: height * 0.012, vertical: height * 0.004),
          child: customText(
              context: context,
              text: text,
              color: Colors.black,
              letterSpacing: 1.2),
        ),
      ),
    );
  }
}
