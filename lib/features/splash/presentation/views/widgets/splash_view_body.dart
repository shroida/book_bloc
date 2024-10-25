import 'package:book_bloc/core/utlis/assets_images.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.asset(AssetsImages.logo)],
    );
  }
}
