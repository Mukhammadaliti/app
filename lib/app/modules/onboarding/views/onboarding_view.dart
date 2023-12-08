import 'package:app/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding'),
      ),
      body: PageView(
        controller: PageController(),
        onPageChanged: (index) {
          controller.currentPage.value = index;
        },
        children: [
          OnboardingPage('Page 1'),
          OnboardingPage('Page 2'),
          OnboardingPage('Page 3'),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentPage.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              label: '1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              label: '2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              label: '3',
            ),
          ],
          onTap: (index) {
            controller.currentPage.value = index;
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.currentPage.value < 2
            ? () => controller.nextPage()
            : () => controller.goToHome(),
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;

  OnboardingPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
