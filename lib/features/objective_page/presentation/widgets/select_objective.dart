import 'package:flutter/material.dart';
import 'package:resume_builder/core/custom_widgets/custom_text.dart';
import 'package:resume_builder/core/utils/constants/contstants.dart';
import 'package:resume_builder/features/objective_page/data/objective_dummy_data.dart';

class SelectObjectiveWidget extends StatefulWidget {
  const SelectObjectiveWidget({super.key});

  @override
  State<SelectObjectiveWidget> createState() => _SelectObjectiveWidgetState();
}

class _SelectObjectiveWidgetState extends State<SelectObjectiveWidget> {
  JobObjectives objectives = JobObjectives();

  @override
  Widget build(BuildContext context) {
    double height = mediaQueryHeight(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: customText(context: context, text: 'Select Objective'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: height * 0.01,
              ),
              itemCount: objectives.objectives.length,
              itemBuilder: (context, index) {
                final objective = objectives.objectives[index];
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: height * 0.12,
                    margin: EdgeInsets.symmetric(horizontal: height * 0.01),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(height * 0.01),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: height * 0.02,
                        ),
                        child: Center(
                          child: customText(
                              context: context,
                              text: objective,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

