import 'package:flutter/material.dart';
import 'package:papay/domain/core/base_class.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/onboard/widgets/onboard_item_widget.dart';
import 'package:papay/presentation/routes/app_router.dart';

final List<OnboardClass> onboardMenu = [
  OnboardClass(
    title: 'Just Few Clicks',
    description:
        'No need to worry about parking wherever you go, cozy and easily accessible parking spaces are available in PAPAY',
    image: 'assets/onboard/1.png',
  ),
  OnboardClass(
    title: 'Save Your Time',
    description:
        "With PAPAY, you don't have to waste time wandering around looking for an empty parking space in the middle of a busy city!",
    image: 'assets/onboard/2.png',
  ),
  OnboardClass(
    title: 'Real-Time IoT Solution',
    description:
        "No need to worry if your parking spot is occupied by someone else, a real-time IoT sensor system will be your best solution!",
    image: 'assets/onboard/3.png',
  ),
];

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  late PageController pageController;

  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(color: AppColor.primary),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: onboardMenu.length,
                itemBuilder: (context, index) {
                  final menu = onboardMenu[index];
                  return OnboardItemWidget(
                    title: menu.title,
                    description: menu.description,
                    image: menu.image,
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  Container(
                    width: 20,
                    height: 4,
                    padding: const EdgeInsets.all(12.0),
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    color: i == currentIndex
                        ? AppColor.lightPrimary
                        : AppColor.softPrimary,
                  ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2,
              margin: const EdgeInsets.all(30),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 150),
                child: currentIndex == 2
                    ? FractionallySizedBox(
                        widthFactor: 1,
                        child: ElevatedButton(
                          onPressed: () {
                            context.router.replace(const LoginRoute());
                          },
                          child: const Text('Get Started'),
                        ),
                      )
                    : Material(
                        color: AppColor.greyPrimary,
                        borderRadius: BorderRadius.circular(24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: currentIndex == 0
                                  ? null
                                  : () {
                                      setState(() {
                                        currentIndex--;
                                      });
                                      pageController.previousPage(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeIn,
                                      );
                                    },
                              icon:
                                  const Icon(Icons.arrow_circle_left_outlined),
                            ),
                            IconButton(
                              onPressed: currentIndex == 2
                                  ? null
                                  : () {
                                      setState(() {
                                        currentIndex++;
                                      });
                                      pageController.nextPage(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeIn,
                                      );
                                    },
                              icon:
                                  const Icon(Icons.arrow_circle_right_outlined),
                            ),
                          ],
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
