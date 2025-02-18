import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_adventure_ui/core/themes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * .5,
                decoration: const BoxDecoration(
                  color: SAColors.primary,
                ),
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        transform: Matrix4.identity()..rotateZ(-5),
                        transformAlignment: Alignment.center,
                        height: 190,
                        width: 190,
                        decoration: const BoxDecoration(
                          color: SAColors.pink,
                        ),
                      ),
                      Image.asset(
                        'lib/presentation/images/sa_ui_illustration-removebg.png',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: SAColors.babyBlue,
                      ),
                      child: Text(
                        'Step 03',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: SAColors.secondary),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        'Your Social\nAdventure Begins\nHere',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(fontWeight: FontWeight.w900),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        padding: const EdgeInsets.all(15),
                        backgroundColor: SAColors.secondary,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(23)),
                        ),
                      ),
                      onPressed: () {},
                      child: const Icon(
                        Icons.arrow_forward,
                        color: SAColors.white,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Opacity(
                opacity: .85,
                child: SvgPicture.asset(
                  'lib/presentation/images/four_point_star.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
