import 'package:book_bloc/core/errors/failures.dart';
import 'package:book_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:book_bloc/features/home/data/repos/home_repos.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepos{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {

  }

}