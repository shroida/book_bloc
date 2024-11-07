import 'package:book_bloc/core/utlis/styles_fonts.dart';
import 'package:book_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingRowWidget extends StatelessWidget {
  const RatingRowWidget({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Free',
          style: Styles.textStyle20,
        ),
        const SizedBox(width: 26),
        Row(
          children: [
            const Icon(
              FontAwesomeIcons.solidStar,
              color: Color(0xffffdd4f),
              size: 15,
            ),
            Text(
              '${bookModel.volumeInfo.averageRating ?? 0}',
              style: Styles.textStyle14,
            ),
            Text(
              ' (${bookModel.volumeInfo.ratingsCount ?? 0})',
              style: Styles.textStyle14,
            ),
          ],
        )
      ],
    );
  }
}
