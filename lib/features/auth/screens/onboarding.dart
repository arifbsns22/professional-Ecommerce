import 'package:econ/features/auth/screens/widgets/onboarding_widgets.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/images_strings.dart';
import '../../../utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              OnBoardingPage(
                image: TImages.onBoarding1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoarding2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoarding3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          //-------------------------------Skip Button
          const OnBoardingSkip(),
          //-------------------------------Dot Navigation
          const OnBoardingDotNavigation(),
          //-------------------------------Circular Button

        ],
      ),
    );
  }
}




