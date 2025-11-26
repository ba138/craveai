import 'dart:ui';

import 'package:craveai/controllers/app_colors.dart';
import 'package:craveai/generated/assets.dart';
import 'package:craveai/views/screens/Subscription_Screens/complete_your%20_purchase_screen.dart';
import 'package:craveai/views/screens/create_ai_gf_screens/widgets/advanced_settings_widget.dart';
import 'package:craveai/views/screens/create_ai_gf_screens/widgets/basic_information_widget.dart';
import 'package:craveai/views/screens/create_ai_gf_screens/widgets/choice_voice_widget.dart';
import 'package:craveai/views/screens/create_ai_gf_screens/widgets/personality_builder_widget.dart';
import 'package:craveai/views/widgets/common_image_view.dart';
import 'package:craveai/views/widgets/my_button.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAiGfScreen extends StatefulWidget {
  const CreateAiGfScreen({super.key});

  @override
  State<CreateAiGfScreen> createState() => _CreateAiGfScreenState();
}

class _CreateAiGfScreenState extends State<CreateAiGfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20,
            bottom: 12,
            top: 12,
          ),
          child: SingleChildScrollView(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonImageView(imagePath: Assets.aiIcon, height: 30),
                    Expanded(
                      child: MyText(
                        text: "Build Your Own AI Companion",
                        size: 24,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MyText(
                  text: "Customize looks, personality & behavior.",
                  size: 12,
                ),
                const SizedBox(height: 20),

                BasicInformationWidget(),
                const SizedBox(height: 20),

                PersonalityBuilderWidget(),
                const SizedBox(height: 20),
                ChoiceVoiceWidget(),
                const SizedBox(height: 20),
                AdvancedSettingsWidget(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MyButton(
                    onTap: () {
                      Get.to(() => CompleteYourPurchaseScreen());
                    },
                    buttonText: "Create My AI Model",
                    radius: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
