import 'package:currency/dio/dio_services.dart';
import 'package:currency/src/app_root.dart';
import 'package:flutter/material.dart';

void main()
{
  DioHelper.init();
  runApp(AppRoot());
}
