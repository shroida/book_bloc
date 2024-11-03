import 'package:book_bloc/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepos {
  Future<List<BookModel>> fetchBestSellerBooks();
  fetchFeaturedBooks();
}
