import 'package:flutter/material.dart';
import 'package:hs_product_crud/utils/font_name.dart';

import 'utils/color_const.dart';
import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routes.onGenerateRoute,
      theme: ThemeData(
        fontFamily: FontName.fc,
        appBarTheme: AppBarTheme(
          color: ColorConst.primary,
        ),
      ),
    );
  }
}
