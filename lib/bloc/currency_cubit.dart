import 'package:currency/dio/dio_services.dart';
import 'package:currency/model/currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'currency_state.dart';

class CurrencyCubit extends Cubit<CurrencyState> {
  CurrencyCubit() : super(CurrencyInitial());

   static CurrencyCubit get(context) => BlocProvider.of(context);

  CurrencyHub? currencyHub;

  convertcurrency(String from, double amount, String to) {
    emit(CurrencyLoadingState());
    DioHelper.getData(
        url: 'convert',
        query:
        {
          'from': from,
          'amount': amount,
          'to': to
        }).then((value) {
      currencyHub = CurrencyHub.fromJson(value.data);
      emit(CurrencySuccessState());
    }).catchError((error) {
      emit(CurrencyErrorState());
    });
  }
}
