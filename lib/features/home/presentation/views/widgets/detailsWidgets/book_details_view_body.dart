import 'package:book_bloc/core/utlis/styles_fonts.dart';
import 'package:book_bloc/features/home/presentation/views/widgets/detailsWidgets/books_details_section.dart';
import 'package:book_bloc/features/home/presentation/views/widgets/detailsWidgets/custom_details_appbar.dart';
import 'package:book_bloc/features/home/presentation/views/widgets/detailsWidgets/similar_books_list_view.dart';
import 'package:book_bloc/features/home/presentation/views/widgets/homeWidgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.17),
              child: const CustomBookImage(imageUrl: '',),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'The Jungle Book',
              style: Styles.textStyle20,
            ),
            const BooksDetailsSection(),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You may also like',
                textAlign: TextAlign.start,
                style: Styles.textStyle14,
              ),
            ),
            const SimilarBooksListView(),
          ],
        ),
      ),
    );
  }
}
