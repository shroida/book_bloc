import 'package:book_bloc/core/utlis/styles_fonts.dart';
import 'package:book_bloc/features/home/data/presentation/views/widgets/custom_appbar.dart';
import 'package:book_bloc/features/home/data/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(
          height: 50,
        ),
        Text(
          'Best Seller',
          style: Styles.titleMedium,
        )
      ],
    );
  }
}
