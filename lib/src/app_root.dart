import 'package:currency/bloc/currency_cubit.dart';
import 'package:currency/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) =>CurrencyCubit())
      ],
      child: const MaterialApp(
        home: SplashView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
