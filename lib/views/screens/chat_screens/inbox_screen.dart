import 'dart:ui';

import 'package:craveai/generated/app_colors.dart';
import 'package:craveai/generated/assets.dart';
import 'package:craveai/views/screens/chat_screens/widgtes/inbox_card_widget.dart';
import 'package:craveai/views/widgets/common_image_view.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:craveai/views/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    text: "Message",
                    size: 24,
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.white.withValues(
                          alpha: 0.3,
                        ), // light white border
                        width: 1.2,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 0,
                        sigmaY: 0,
                      ), // glass blur effect
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(
                            12,
                          ), // frosted background
                        ),
                        child: Center(
                          child: Icon(
                            Icons.tune, // filter icon
                            color: AppColors.secondary, // red color
                            size: 28,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              MyText(text: "Activities", size: 18),
              const SizedBox(height: 16),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 20,
                  children: [
                    CommonImageView(
                      imagePath: Assets.maya,
                      height: 60,
                      width: 60,
                      radius: 30,
                    ),
                    CommonImageView(
                      imagePath: Assets.maya,
                      height: 60,
                      width: 60,
                      radius: 30,
                    ),
                    CommonImageView(
                      imagePath: Assets.maya,
                      height: 60,
                      width: 60,
                      radius: 30,
                    ),
                    CommonImageView(
                      imagePath: Assets.maya,
                      height: 60,
                      width: 60,
                      radius: 30,
                    ),
                    CommonImageView(
                      imagePath: Assets.maya,
                      height: 60,
                      width: 60,
                      radius: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              MyTextField(
                hint: "Search",
                prefix: Icon(Icons.search),
                radius: 12,
              ),
              const SizedBox(height: 10),
              MyText(text: "Messages", size: 18),
              const SizedBox(height: 20),

              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InboxCard(
                      name: "Maya",
                      message: "Hi there!",
                      time: "19:00",
                      image: Assets.maya,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
