import 'package:book_bloc/core/errors/failures.dart';
import 'package:book_bloc/core/utlis/api_service.dart';
import 'package:book_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:book_bloc/features/home/data/repos/home_repos.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepos {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=computer science',
      );

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromMap(item)); // Use fromMap here
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure.fromHttpError(e)); // Handle error here
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming',
      );

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromMap(item)); 
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure.fromHttpError(e)); // Error handled in ServerFailure
    }
  }
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilar( {required String category}) async{
  
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=programming',
      );

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromMap(item)); 
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure.fromHttpError(e)); // Error handled in ServerFailure
    }
  }



}
