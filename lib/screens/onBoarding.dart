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
    return [
      PageViewModel(
        decoration: PageDecoration(imageFlex: 3),
        image: Image.network("https://gaaraexport.com/wp-content/uploads/2024/11/naomi-mango.png"),
        title: "Title of first page",
        body: "Here you can write the description of the page",
      ),
      PageViewModel(
        decoration: PageDecoration(imageFlex: 3),
        image: Image.network("https://image.similarpng.com/file/similarpng/very-thumbnail/2020/11/Fresh-red-apple-isolated-on-transparent-background-PNG.png"),
        title: "Title of Second page",
        body: "Here you can write the description of the page",
      ),
      PageViewModel(
        decoration: PageDecoration(imageFlex: 3),
        image: Image.network("https://img.freepik.com/free-psd/vibrant-tropical-fruit-medley-burst-summer-flavors_191095-81030.jpg?semt=ais_hybrid&w=740&q=80"),
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
        next: Icon(Icons.arrow_forward_rounded),
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
