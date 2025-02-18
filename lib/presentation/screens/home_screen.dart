import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_adventure_ui/core/themes.dart';
import 'package:social_adventure_ui/presentation/widgets/center_star.dart';
import 'package:social_adventure_ui/presentation/widgets/curved_half.dart';

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
              // top half background
              ClipPath(
                clipper: BottomCurveClipper(),
                child: Container(
                  height: MediaQuery.sizeOf(context).height * .55,
                  decoration: const BoxDecoration(
                    color: SAColors.primary,
                  ),
                  child: Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // stars
                        Positioned(
                          top: 30,
                          right: 60,
                          child: SvgPicture.asset(
                            'lib/presentation/images/glare.svg',
                            height: 40,
                            width: 40,
                          ),
                        ),
                        // titled box in the background
                        Container(
                          transform: Matrix4.identity()..rotateZ(-5),
                          transformAlignment: Alignment.center,
                          height: 190,
                          width: 190,
                          decoration: const BoxDecoration(
                            color: SAColors.pink,
                          ),
                        ),

                        // illustration
                        Image.asset(
                          'lib/presentation/images/sa_ui_illustration-removebg.png',
                        ),

                        Positioned(
                          bottom: 30,
                          left: 50,
                          child: Image.asset(
                            'lib/presentation/images/bubbles.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Column(
                  children: [
                    // number of steps
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

                    // tagline
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

                    // advance button
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
                        Icons.arrow_forward_rounded,
                        color: SAColors.white,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // center star
          const CenterStar(),
        ],
      ),
    );
  }
}
