import 'package:craveai/controllers/app_colors.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:flutter/material.dart';

class FAQItem extends StatelessWidget {
  final int number;
  final String question;
  final String answer;

  const FAQItem({
    super.key,
    required this.number,
    required this.question,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row with Number + Question
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: "$number.",
              size: 16,
              weight: FontWeight.w600,
              color: AppColors.secondary,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: MyText(
                text: question,
                size: 16,
                weight: FontWeight.bold,
                color: AppColors.secondary,
              ),
            ),
          ],
        ),

        const SizedBox(height: 12),

        // Answer text
        MyText(text: answer, size: 14, color: Colors.white70),

        const SizedBox(height: 20),

        Divider(color: Colors.white.withValues(alpha: 0.2), thickness: 1),

        const SizedBox(height: 20),
      ],
    );
  }
}
