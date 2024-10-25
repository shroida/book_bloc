import 'package:book_bloc/core/utlis/styles_fonts.dart';
import 'package:book_bloc/features/home/data/presentation/views/widgets/detailsWidgets/books_details_section.dart';
import 'package:book_bloc/features/home/data/presentation/views/widgets/detailsWidgets/custom_details_appbar.dart';
import 'package:book_bloc/features/home/data/presentation/views/widgets/homeWidgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.17),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'The Jungle book',
            style: Styles.textStyle20,
          ),
         
          const BooksDetailsSection(),
        ],
      ),
    );
  }
}
