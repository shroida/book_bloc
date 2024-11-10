import 'package:book_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:book_bloc/features/home/data/repos/home_repos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_books_cubit_state.dart';

class SimilarBooksCubitCubit extends Cubit<SimilarBooksCubitState> {
  SimilarBooksCubitCubit(
    this.homeRepos,
  ) : super(SimilarBooksCubitInitial());

  final HomeRepos homeRepos;
  Future<void> fetchSimilar({required String category}) async {
    emit(SimilarBooksCubitLoading());
    var result = await homeRepos.fetchSimilar(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
