import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BestSellerItemShimmer extends StatelessWidget {
  const BestSellerItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            // Shimmer for book image
            Container(
              width: 60,
              height: 80,
              color: Colors.white,
              margin: const EdgeInsets.only(right: 30),
            ),
            // Shimmer for text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Shimmer for book title
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 20,
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 8),
                ),
                // Shimmer for author name
                Container(
                  width: 100,
                  height: 14,
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 8),
                ),
                // Shimmer for rating
                Container(
                  width: 60,
                  height: 14,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
