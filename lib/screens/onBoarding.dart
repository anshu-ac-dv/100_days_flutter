import 'package:flutter/material.dart';
import 'package:flutter_ui_design/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  List<PageViewModel> getPages() {
    return[
     PageViewModel(
      title: "Title of first page",
      body: "Here you can write the description of the page",
     ),
      PageViewModel(
        title: "Title of Second page",
        body: "Here you can write the description of the page",
      ),
      PageViewModel(
        title: "Title of Third page",
        body: "Here you can write the description of the page",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showSkipButton: true,
        skip: Text("Skip"),
        next: Text("Next"),
        done: Text("Done"),
        dotsDecorator: DotsDecorator(
          color: Colors.grey,
          activeColor: Colors.black,
        ),
        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        pages: getPages(),
      ),
    );
  }
}
