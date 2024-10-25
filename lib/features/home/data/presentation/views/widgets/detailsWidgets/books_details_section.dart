import 'package:book_bloc/core/utlis/styles_fonts.dart';
import 'package:book_bloc/core/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Opacity(
          opacity: .7,
          child: Text(
            'ElGrandeToto',
            style: Styles.textStyle20,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              backgroundColor: Colors.white,
              fontSize: 16,
              text: '19.99 €',
              textColor: Color(0xFF000000),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
            CustomButton(
              backgroundColor: Color(0xffef8262),
              fontSize: 16,
              text: 'Free Preview',
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ],
        )
      ],
    );
  }
}
