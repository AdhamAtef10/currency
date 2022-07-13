
import 'dart:async';

import 'package:currency/core/utlis/navigation.dart';
import 'package:currency/core/utlis/size_config.dart';
import 'package:currency/views/home_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);
  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), ()=>AppNavigator.customNavigator(
        context: context, screen: const FirstView(), finish: false)
    );
  }
  @override
  Widget build(BuildContext context)
  {
    SizeConfig.init(context);

    return Scaffold(
      body: Container(
        color: Colors.white,
        child:Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo1.png'),
                fit: BoxFit.scaleDown,
              )
          ),
        ),
      ),
    );
  }
}
