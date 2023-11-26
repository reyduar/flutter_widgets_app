import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String description;
  final String imagePath;

  SlideInfo(this.title, this.description, this.imagePath);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Select your food',
      'Consectetur ipsum est incididunt amet in deserunt ipsum et mollit laborum commodo ullamco.',
      'assets/images/1.png'),
  SlideInfo(
      'Delivery',
      'Ut qui labore dolor reprehenderit laboris veniam ipsum.',
      'assets/images/2.png'),
  SlideInfo(
      'Enjoy it =)',
      'Nisi est culpa quis aliquip laborum minim nostrud culpa voluptate ullamco laborum anim elit.',
      'assets/images/3.png')
];

class AppTutorialScreen extends StatefulWidget {
  static const String name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool endReached = false;
  @override
  void initState() {
    super.initState();

    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if (!endReached && page >= (slides.length - 1)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Application Tutorial'),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((item) => _Slide(
                    title: item.title,
                    description: item.description,
                    imagePath: item.imagePath))
                .toList(),
          ),
          Positioned(
              right: 20,
              top: 20,
              child: TextButton(
                  onPressed: () => context.pop(), child: const Text('Close'))),
          endReached
              ? Positioned(
                  bottom: 20,
                  right: 20,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                        onPressed: () => context.pop(),
                        child: const Text('Start')),
                  ))
              : const SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const _Slide(
      {required this.title,
      required this.description,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final descriptionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: titleStyle,
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: descriptionStyle,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
