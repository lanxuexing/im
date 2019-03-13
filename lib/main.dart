import 'package:flutter/material.dart';
import 'package:im/home/home_page.dart';
import 'package:im/home/constants.dart' show AppColors;

void main() => runApp(MaterialApp(
  title: 'IM',
  theme: ThemeData.light().copyWith(
    primaryColor: Color(AppColors.APPBarColor)
  ),
  home: HomePage(),
));