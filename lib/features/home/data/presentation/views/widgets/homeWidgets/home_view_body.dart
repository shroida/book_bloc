import 'package:book_bloc/core/utlis/styles_fonts.dart';
import 'package:book_bloc/features/home/data/presentation/views/widgets/homeWidgets/best_seller_column.dart';
import 'package:book_bloc/features/home/data/presentation/views/widgets/detailsWidgets/custom_appbar.dart';
import 'package:book_bloc/features/home/data/presentation/views/widgets/homeWidgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListView(),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Best Seller',
                  style: Styles.textStyle20,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: BestSellerColumn()),
        ),
      ],
    );
  }
}
