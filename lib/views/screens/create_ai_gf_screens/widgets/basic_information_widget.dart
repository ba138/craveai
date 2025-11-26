import 'dart:ui';

import 'package:craveai/controllers/app_colors.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:craveai/views/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class BasicInformationWidget extends StatefulWidget {
  const BasicInformationWidget({super.key});

  @override
  State<BasicInformationWidget> createState() => _BasicInformationWidgetState();
}

class _BasicInformationWidgetState extends State<BasicInformationWidget> {
  String selectedGender = "Female";
  double age = 25;

  final List<String> genders = ["Female", "Male", " Non-binary "];
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
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(text: "Basic Information", size: 18),
                  const SizedBox(height: 14),
                  MyTextField(label: "Model Name", hint: "Enter a name"),
                  const SizedBox(height: 8),
                  MyText(
                    text: "Gender",
                    size: 12,
                    paddingBottom: 8,
                    color: AppColors.primary,
                    weight: FontWeight.w400,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(genders.length, (index) {
                      final gender = genders[index];
                      final bool isSelected = selectedGender == gender;

                      return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedGender = gender;
                              });
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 12,
                                  sigmaY: 12,
                                ),
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  height: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? Colors.white.withValues(alpha: 0.18)
                                        : Colors.white.withValues(alpha: 0.05),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: isSelected
                                          ? AppColors.secondary
                                          : Colors.white.withValues(
                                              alpha: 0.25,
                                            ),
                                      width: 1.4,
                                    ),
                                  ),
                                  child: MyText(
                                    text: gender,
                                    size: 14,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: "Choose Appearance Age", size: 14),

                      MyText(text: age.toInt().toString(), size: 12),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Slider
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: AppColors.secondary,
                      inactiveTrackColor: AppColors.primary,
                      trackHeight: 6,
                      thumbColor: AppColors.secondary,
                      overlayColor: AppColors.secondary.withValues(alpha: 0.2),
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 0,
                      ),
                    ),
                    child: Slider(
                      min: 18,
                      max: 60,
                      value: age,
                      onChanged: (val) {
                        setState(() => age = val);
                      },
                    ),
                  ),

                  // Min & Max labels
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "18",
                        style: TextStyle(color: Colors.white60, fontSize: 12),
                      ),
                      Text(
                        "60",
                        style: TextStyle(color: Colors.white60, fontSize: 12),
                      ),
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
