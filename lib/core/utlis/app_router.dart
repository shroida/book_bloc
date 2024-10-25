import 'package:book_bloc/features/home/data/presentation/views/home_view.dart';
import 'package:book_bloc/features/splash/presentation/views/splash_views.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),

  ]);
}