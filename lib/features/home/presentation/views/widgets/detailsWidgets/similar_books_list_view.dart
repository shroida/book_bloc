import 'package:book_bloc/core/widgets/custom_error.dart';
import 'package:book_bloc/features/home/presentation/manager/similar_books_cubit_cubit/similar_books_cubit_cubit.dart';
import 'package:book_bloc/features/home/presentation/views/widgets/homeWidgets/custom_book_image_shimmer.dart';
import 'package:book_bloc/features/home/presentation/views/widgets/homeWidgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubitCubit, SimilarBooksCubitState>(
        builder: (context, state) {
      if (state is SimilarBooksSuccess) {
        return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CustomBookImage(
                      imageUrl: '',
                    ),
                  );
                }));
      } else if (state is SimilarBooksFailure) {
        return CustomError(errMessage: state.errMessage);
      } else {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5, 
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomBookImageShimmer(),
              );
            },
          ),
        );
      }
    });
  }
}
