import 'package:book_bloc/features/search/data/presentation/views/widgets/custom_search_textfield.dart';
import 'package:book_bloc/features/search/data/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
        child: Column(
          children: [
            CustomSearchTextField(),
            SizedBox(
              height: 10,
            ),
            Expanded(child: SearchResultListView())
          ],
        ),
      ),
    );
  }
}
