import 'dart:ui';

import 'package:craveai/generated/app_colors.dart';
import 'package:craveai/views/widgets/my_button.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:craveai/views/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  int selectedIndex = -1;
  final List<Map<String, dynamic>> report = [
    {"title": "App Not Working"},
    {"title": "Payment or Billing Issue"},
    {"title": "Chat / Messages Issue"},
    {"title": "AI Model Issue"},
    {"title": "Subscription Not Activated"},
    {"title": "Login / Verification Problem"},
    {"title": "Something Else"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back, color: AppColors.onPrimary),
                    ),
                    const SizedBox(width: 16),
                    MyText(text: "Back", size: 16),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: MyText(
                    text: "Report a Problem",
                    size: 24,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.2),
                      width: 1.2,
                    ),
                  ),
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
                              MyText(
                                text:
                                    "Help us fix the issue. Please describe what went wrong.",
                                size: 13,
                              ),
                              const SizedBox(height: 20),
                              MyText(
                                text: "Issue Category (Select One)",
                                size: 15,
                              ),
                              const SizedBox(height: 20),
                              ...List.generate(report.length, (index) {
                                final item = report[index];
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: selectedCard(
                                    index: index,
                                    title: item["title"],
                                  ),
                                );
                              }),
                              const SizedBox(height: 20),

                              MyText(
                                text: "Describe the problem in detail:",
                                size: 15,
                              ),
                              const SizedBox(height: 20),
                              MyTextField(
                                hint:
                                    "Example: The chat froze when I tried sending a message…",
                                maxLines: 6,
                                radius: 12,
                              ),
                              const SizedBox(height: 20),

                              MyText(
                                text: "Attach Screenshot (Optional)",
                                size: 15,
                              ),
                              const SizedBox(height: 20),

                              Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppColors.primary.withValues(
                                      alpha: 0.5,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.file_upload_outlined,
                                        color: AppColors.primary,
                                      ),
                                      MyText(text: "Upload Image"),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              MyText(
                                text: "Your Email (Auto-filled if logged in)",
                                size: 15,
                              ),
                              const SizedBox(height: 20),
                              MyTextField(radius: 12, hint: "user@email.com"),
                              const SizedBox(height: 40),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: MyButton(
                                  onTap: () {},
                                  buttonText: "Send Report",
                                  radius: 12,
                                ),
                              ),
                              const SizedBox(height: 30),
                              Center(
                                child: MyText(
                                  text:
                                      "We usually respond within 24–48 hours.)",
                                  size: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget selectedCard({required int index, required String title}) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index; // ✅ Select only this card
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
                  // 🔴 Glassy Radio Button Circle
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isSelected
                            ? AppColors.secondary
                            : Colors.white.withValues(alpha: 0.6),
                        width: 2,
                      ),
                      color: Colors.white.withValues(alpha: 0.1),
                    ),
                    child: Center(
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isSelected
                              ? AppColors.secondary
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 16),

                  // Texts
                  MyText(text: title, size: 12),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
