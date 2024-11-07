import 'package:book_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:book_bloc/features/home/data/repos/home_repos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepos) : super(FeaturedBooksInitial());
  final HomeRepos homeRepos;

Future<void> fetchFeatureBooks()async{
emit(FeaturedBooksLoading());
var result = await homeRepos.fetchFeaturedBooks();
result.fold((failure){
  emit(FeaturedBooksFailure(failure.errMessage));
}, (right){
  emit(FeaturedBooksSuccess(right));

}); 
}
}
