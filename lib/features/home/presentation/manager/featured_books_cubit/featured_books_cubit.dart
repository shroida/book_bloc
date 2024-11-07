import 'package:bloc/bloc.dart';
import 'package:book_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
