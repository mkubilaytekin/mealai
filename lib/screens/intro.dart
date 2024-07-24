import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:meal_ai/screens/categories.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      globalBackgroundColor: const Color.fromARGB(255, 193, 61, 61),
      dotsDecorator:
          const DotsDecorator(activeColor: Color.fromARGB(255, 248, 249, 248)),
      pages: [
        PageViewModel(
          title: "Evdeki malzemelerinle pratik yemek yap",
          body:
              "İstediğin malzemeleri bize ver biz sana bu malzemelerle hangi yemek yapılır söyleyelim",
          image: const Center(
            child: Text("❔", style: TextStyle(fontSize: 100.0)),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.white),
            bodyTextStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
                color: Colors.white),
          ),
        ),
        PageViewModel(
          title: "Neyi nasıl yapacağını çok dert etme",
          body:
              "Gemini asistan ile yemek tarifini detaylı bir şekilde biz veriyoruz.",
          image: const Center(
            child: Text("🔮", style: TextStyle(fontSize: 100.0)),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.white),
            bodyTextStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
                color: Colors.white),
          ),
        ),
        PageViewModel(
          title: "İstediğin yemek kültüründen yemek dene",
          body:
              "Malzemelerin ile istediğin yemek kültüründen yemek denemeye şimdi başla",
          image: const Center(
            child: Text("🗺️", style: TextStyle(fontSize: 100.0)),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.white),
            bodyTextStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
                color: Colors.white),
          ),
        ),
      ],
      showNextButton: false,
      done: const Text(
        "Bitti",
        style: TextStyle(color: Colors.white),
      ),
      onDone: () {
        // On button pressed
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const CategoriesScreen()),
            (route) => false);
      },
    ));
  }
}
