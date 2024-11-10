import 'package:book_bloc/core/utlis/app_router.dart';
import 'package:book_bloc/core/utlis/styles_fonts.dart';
import 'package:book_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:book_bloc/features/home/presentation/views/widgets/homeWidgets/custom_list_view_item.dart';
import 'package:book_bloc/features/home/presentation/views/widgets/homeWidgets/rating_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.smallThumbnail??''),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    bookModel.volumeInfo.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle18,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  bookModel.volumeInfo.authors != null ? bookModel.volumeInfo.authors![0] : 'Unknown auther',
                  style: Styles.textStyle14,
                ),
                RatingRowWidget(bookModel: bookModel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
