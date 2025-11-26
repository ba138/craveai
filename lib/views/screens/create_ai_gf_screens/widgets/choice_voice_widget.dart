import 'dart:ui';

import 'package:craveai/controllers/app_colors.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:flutter/material.dart';

class ChoiceVoiceWidget extends StatefulWidget {
  const ChoiceVoiceWidget({super.key});

  @override
  State<ChoiceVoiceWidget> createState() => _ChoiceVoiceWidgetState();
}

class _ChoiceVoiceWidgetState extends State<ChoiceVoiceWidget> {
  int selectedIndex = -1; // ✅ Track selected card

  final List<Map<String, dynamic>> voiceList = [
    {
      "icon": Icons.mic,
      "title": "Gentle and playful",
      "subtitle": "Confident and soothing",
    },
    {
      "icon": Icons.mic,
      "title": "Soft & Cute",
      "subtitle": "Gentle and playful",
    },
    {
      "icon": Icons.mic,
      "title": "Bold & Confident",
      "subtitle": "Smooth and deep",
    },
    {
      "icon": Icons.mic,
      "title": "Calm & Caring",
      "subtitle": "Soft and relaxing",
    },
  ];

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
                  MyText(text: "Choose Voice", size: 18),
                  const SizedBox(height: 14),

                  // 🔥 List of cards
                  ...List.generate(voiceList.length, (index) {
                    final item = voiceList[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: selectedCard(
                        index: index,
                        icon: item["icon"],
                        title: item["title"],
                        subtitle: item["subtitle"],
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget selectedCard({
    required int index,
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index; // ✅ Select ONLY this card
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected
                ? AppColors.secondary
                : Colors.white.withValues(alpha: 0.8),
            width: 0.8,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white.withValues(alpha: 0.03),
              child: Row(
                children: [
                  // 🔴 Outer Circle
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isSelected ? AppColors.secondary : Colors.white,
                    ),
                    child: Center(
                      child: Icon(
                        icon,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  ),

                  const SizedBox(width: 16),

                  // 🔤 Texts
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(text: title, size: 16),
                      const SizedBox(height: 4),
                      MyText(text: subtitle, size: 12),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
