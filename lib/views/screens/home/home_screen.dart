import 'dart:ui';

import 'package:craveai/controllers/app_colors.dart';
import 'package:craveai/generated/assets.dart';
import 'package:craveai/views/screens/home/detail_screen.dart';
import 'package:craveai/views/widgets/categories_card.dart';
import 'package:craveai/views/widgets/common_image_view.dart';
import 'package:craveai/views/widgets/dynamic_container.dart';
import 'package:craveai/views/widgets/home_card.dart';
import 'package:craveai/views/widgets/my_button.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:craveai/views/widgets/single_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> tags = [
    "#Flirty",
    "#Romantic",
    "#Supportive",
    "#Funny",
    "#Intelligent",
    "#Adventurous",
    "#Caring",
    "#Mysterious",
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonImageView(imagePath: Assets.logo, height: 40),
                    Row(
                      children: [
                        // Chat icon
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: AppColors.primary.withValues(alpha: 0.2),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white.withValues(alpha: 0.2),
                                  width: 1.2,
                                ),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.chat,
                                  size: 16,
                                  color: AppColors.secondary,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        // Notifications icon
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: AppColors.primary.withValues(alpha: 0.2),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white.withValues(alpha: 0.2),
                                  width: 1.2,
                                ),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.notifications,
                                  size: 16,
                                  color: AppColors.secondary,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        // Menu icon
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: AppColors.primary.withValues(alpha: 0.2),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white.withValues(alpha: 0.2),
                                  width: 1.2,
                                ),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.menu,
                                  size: 16,
                                  color: AppColors.secondary,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        AppColors.primary.withValues(alpha: 0.7), // green
                        Color(0xFFD01005).withValues(alpha: 0.08), // red
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                      top: 16,
                      bottom: 16,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  MyText(
                                    text: "Meet Your",
                                    size: 13,
                                    weight: FontWeight.w600,
                                  ),
                                  MyText(
                                    text: " Perfect AI",
                                    size: 13,
                                    weight: FontWeight.w600,
                                    color: AppColors.secondary,
                                  ),
                                ],
                              ),
                              MyText(
                                text: "Companion",
                                size: 13,
                                weight: FontWeight.w600,
                              ),
                              const SizedBox(height: 10),

                              MyText(
                                text:
                                    "Choose from fully unlocked, personality-rich models tailored for you",
                                size: 10,
                                weight: FontWeight.w600,
                              ),
                              const SizedBox(height: 10),

                              Container(
                                height: 30,
                                width: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: AppColors.secondary,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      CommonImageView(
                                        imagePath: Assets.aiIcon,
                                        height: 20,
                                      ),
                                      const SizedBox(width: 6),
                                      MyText(
                                        text: "Create AI Girlfriend",
                                        size: 10,
                                        weight: FontWeight.w600,
                                        color: AppColors.primary,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: CommonImageView(
                            imagePath: Assets.aiGroup,
                            height: 90,
                            width: double.maxFinite,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Divider(
                  color: Colors.white.withValues(alpha: 0.1),
                  thickness: 1,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40, // enough for dynamic text container
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    itemBuilder: (context, index) {
                      return DynamicContainer(text: tags[index]);
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                    itemCount: tags.length,
                  ),
                ),
                const SizedBox(height: 20),

                SingleCard(
                  onTap: () {
                    Get.to(() => DetailScreen());
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 20.0,
                  ),
                  child: MyButton(
                    onTap: () {
                      Get.to(() => DetailScreen());
                    },
                    buttonText: "Chat Now",
                    radius: 16,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(text: "Categories", size: 20),
                        MyText(text: "Choose Your Vibe", size: 14),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 100.0),
                        child: MyBorderButton(
                          buttonText: "see More",
                          onTap: () {},
                          radius: 8,
                          bgColor: Colors.transparent,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CategoryCard(
                  title: "Flirty",
                  description: "Playful, bold & romantic.",
                  emoji: "💋",
                ),
                const SizedBox(height: 10),
                CategoryCard(
                  title: "Shy",
                  description: "Soft, sweet & gentle energy.",
                  emoji: "💋",
                ),
                const SizedBox(height: 20),
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.9,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    HomeCard(
                      image: Assets.maya,
                      title: "Flirty",
                      age: "25",
                      ontap: () {
                        Get.to(() => DetailScreen());
                      },
                    ),
                    HomeCard(
                      image: Assets.maya,
                      title: "Romantic",
                      age: "30",
                      ontap: () {
                        Get.to(() => DetailScreen());
                      },
                    ),
                    HomeCard(
                      image: Assets.maya,
                      title: "Chill",
                      age: "22",
                      ontap: () {
                        Get.to(() => DetailScreen());
                      },
                    ),
                    HomeCard(
                      image: Assets.maya,
                      title: "Adventurous",
                      age: "28",
                      ontap: () {
                        Get.to(() => DetailScreen());
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MyBorderButton(
                    buttonText: "See More",
                    onTap: () {},
                    bgColor: Colors.transparent,
                    borderColor: AppColors.secondary,
                    radius: 16,
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
