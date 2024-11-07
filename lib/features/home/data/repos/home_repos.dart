import 'package:book_bloc/core/errors/failures.dart';
import 'package:book_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepos {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilar({required String category});
}
