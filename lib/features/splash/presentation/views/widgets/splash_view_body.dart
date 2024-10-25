import 'package:book_bloc/core/utlis/app_router.dart';
import 'package:book_bloc/core/utlis/assets_images.dart';
import 'package:book_bloc/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeViewAfterAnimation();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsImages.logo),
        const SizedBox(height: 4),
        SlidingText(
          slidingAnimation: slidingAnimation,
        )
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero).animate(
            CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    // Start the animation
    animationController.forward();
  }

  void navigateToHomeViewAfterAnimation() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        // Check if the widget is still mounted
        GoRouter.of(context).push(AppRouter.kHomeView);
      }
    });
  }
}
