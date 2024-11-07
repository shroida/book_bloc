import 'package:book_bloc/core/widgets/custom_error.dart';
import 'package:book_bloc/features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:book_bloc/features/home/presentation/views/widgets/homeWidgets/best_seller_item.dart';
import 'package:book_bloc/features/home/presentation/views/widgets/homeWidgets/best_seller_item_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class BestSellerColumn extends StatelessWidget {
  const BestSellerColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is NewsetBooksFailure) {
          return CustomError(errMessage: state.errMessage);
        } else {
          // Display shimmer effect when loading
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5, // Display 5 shimmer items as placeholders
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Shimmer.fromColors(
                    baseColor: Colors.grey[500]!,
                    highlightColor: Colors.grey[100]!,
                    child: const BestSellerItemShimmer()),
              );
            },
          );
        }
      },
    );
  }
}
