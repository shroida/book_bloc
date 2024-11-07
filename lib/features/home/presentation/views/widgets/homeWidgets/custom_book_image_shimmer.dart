import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomBookImageShimmer extends StatelessWidget {
  const CustomBookImageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: 100, // Set width according to the book image's typical width
        height: MediaQuery.of(context).size.height * 0.3,
        color: Colors.white,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
      ),
    );
  }
}
