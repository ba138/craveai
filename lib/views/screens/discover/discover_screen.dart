import 'package:craveai/generated/assets.dart';
import 'package:craveai/views/screens/home/detail_screen.dart';
import 'package:craveai/views/widgets/home_card.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:craveai/views/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Center(
                  child: MyText(
                    text: "Discover AI Models",
                    size: 24,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                MyTextField(
                  hint: "Search AI Model",
                  radius: 12,
                  prefix: Icon(Icons.search),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
