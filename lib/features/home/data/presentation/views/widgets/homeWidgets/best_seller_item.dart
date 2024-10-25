import 'package:book_bloc/core/utlis/app_router.dart';
import 'package:book_bloc/core/utlis/assets_images.dart';
import 'package:book_bloc/core/utlis/styles_fonts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsImages.testImage)),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle18,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'J.K. Shroida',
                  style: Styles.textStyle14,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle20,
                    ),
                    SizedBox(width: 26),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.solidStar,
                          color: Color(0xffffdd4f),
                          size: 15,
                        ),
                        Text(
                          '4.8',
                          style: Styles.textStyle16,
                        ),
                        Text(
                          '(156)',
                          style: Styles.textStyle14,
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
