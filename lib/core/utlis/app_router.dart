import 'package:book_bloc/core/utlis/api_service.dart';
import 'package:book_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:book_bloc/features/home/data/repos/home_rep_impl.dart';
import 'package:book_bloc/features/home/presentation/manager/similar_books_cubit_cubit/similar_books_cubit_cubit.dart';
import 'package:book_bloc/features/home/presentation/views/book_details_view.dart';
import 'package:book_bloc/features/home/presentation/views/home_view.dart';
import 'package:book_bloc/features/search/data/presentation/views/search_view.dart';
import 'package:book_bloc/features/splash/presentation/views/splash_views.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: kSearchView, builder: (context, state) => const SearchView()),
    GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
    GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
              create: (context) =>
                  SimilarBooksCubitCubit((HomeRepoImpl(ApiService()))),
              child: BookDetailsView(
                bookModel: state.extra as BookModel,
              ),
            )),
  ]);
}
