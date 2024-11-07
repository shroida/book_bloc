part of 'similar_books_cubit_cubit.dart';

sealed class SimilarBooksCubitState {}

final class SimilarBooksCubitInitial extends SimilarBooksCubitState {}

final class SimilarBooksCubitLoading extends SimilarBooksCubitState {}

final class SimilarBooksFailure extends SimilarBooksCubitState {
  final String errMessage;

  SimilarBooksFailure(this.errMessage);
}

final class SimilarBooksSuccess extends SimilarBooksCubitState {
  final List<BookModel> books;

  SimilarBooksSuccess(this.books);
}
