import 'dart:ui';
import 'package:craveai/controllers/app_colors.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:flutter/material.dart';

class AdvancedSettingsWidget extends StatefulWidget {
  const AdvancedSettingsWidget({super.key});

  @override
  State<AdvancedSettingsWidget> createState() => _AdvancedSettingsWidgetState();
}

class _AdvancedSettingsWidgetState extends State<AdvancedSettingsWidget> {
  // Checkbox states
  List<bool> checked = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
          child: Container(
            alignment: Alignment.center,
            color: Colors.white.withValues(alpha: 0.1),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(text: "Advanced Settings", size: 18),
                  const SizedBox(height: 20),

                  // ROW 1
                  buildCheckRow(
                    index: 0,
                    title: "Expressive Mode",
                    subtitle: "More emotional variety",
                  ),

                  const SizedBox(height: 16),

                  // ROW 2
                  buildCheckRow(
                    index: 1,
                    title: "Detailed Replies",
                    subtitle: "More descriptive conversations",
                  ),

                  const SizedBox(height: 16),

                  // ROW 3
                  buildCheckRow(
                    index: 2,
                    title: "Roleplay Boost",
                    subtitle: "Stronger character immersion",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// CHECKBOX ROW UI
  Widget buildCheckRow({
    required int index,
    required String title,
    required String subtitle,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          checked[index] = !checked[index];
        });
      },
      child: Row(
        children: [
          // CHECKBOX
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: checked[index]
                  ? AppColors.secondary
                  : Colors.white.withValues(alpha: 0.00),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: checked[index] ? AppColors.secondary : Colors.white,
                width: 1,
              ),
            ),
            child: checked[index]
                ? const Icon(Icons.check, size: 18, color: Colors.white)
                : null,
          ),

          const SizedBox(width: 16),

          // TEXT COLUMN
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(text: title, size: 16),
              const SizedBox(height: 2),
              MyText(text: subtitle, size: 12),
            ],
          ),
        ],
      ),
    );
  }
}
