import 'package:flutter/material.dart';
import 'screens/shared_diary_home_page.dart';
import 'screens/diary_write_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const SharedDiaryHomePage(),
  '/write': (context) => const DiaryWritePage(),
};
