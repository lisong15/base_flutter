import 'package:app_base/src/page/city_select.dart';
import 'package:app_base/src/page/login.dart';
import 'package:flutter/material.dart';

///所有路由集合
final Map routes = {
  "/login": (BuildContext context, {arguments}) => Login(),
  "/cityselect": (BuildContext context, {arguments}) => CitySelect(),
};
