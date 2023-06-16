import 'package:flutter/material.dart';
import 'package:sotre/core/constant/constroutes.dart';
import 'package:sotre/view/screen/auth/login.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
};
