import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';
import '../../../constants/app_constants.dart';

class WorkCards extends StatelessWidget {
  final String title;
  final String description;
  final String duration;
  final String programmingLanguage;
  final Function()? onClick;
  const WorkCards({
    super.key,
    required this.title,
    required this.description,
    required this.duration,
    required this.programmingLanguage,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomNunitoText(
                        text: title,
                        textSize: 18,
                        fontWeight: FontWeight.bold,
                        alignText: TextAlign.start,
                      ),
                      k10VerticalSpacing,
                      CustomNunitoText(
                        text: description,
                        textSize: 12,
                        fontWeight: FontWeight.w400,
                        alignText: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: onClick,
                    icon: const Icon(Icons.arrow_forward_ios_outlined)),
              ],
            ),
            k20VerticalSpacing,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomNunitoText(
                  text: duration,
                  textSize: 12,
                  fontWeight: FontWeight.w600,
                  alignText: TextAlign.center,
                ),
                CustomNunitoText(
                  text: "Language: ${programmingLanguage.toUpperCase()}",
                  textSize: 12,
                  fontWeight: FontWeight.w700,
                  alignText: TextAlign.start,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}
