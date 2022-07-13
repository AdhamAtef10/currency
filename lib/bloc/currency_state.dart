part of 'currency_cubit.dart';

@immutable
abstract class CurrencyState {}

class CurrencyInitial extends CurrencyState {}
class CurrencyLoadingState extends CurrencyState {}
class CurrencySuccessState extends CurrencyState {}
class CurrencyErrorState extends CurrencyState {}


