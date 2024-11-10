import 'package:book_bloc/constants.dart';
import 'package:book_bloc/core/utlis/api_service.dart';
import 'package:book_bloc/core/utlis/app_router.dart';
import 'package:book_bloc/features/home/data/repos/home_rep_impl.dart';
import 'package:book_bloc/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_bloc/features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(HomeRepoImpl(ApiService()))
              ..fetchFeatureBooks()),
        BlocProvider(
            create: (context) => NewsetBooksCubit(HomeRepoImpl(ApiService()))
              ..fetchNewsetBooks()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
