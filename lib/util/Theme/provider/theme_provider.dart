import 'package:flutter/cupertino.dart';
import 'package:platform_converter/util/share_helper.dart';

class ThemeProvider with ChangeNotifier {
  bool isLight = true;

  void changeThem() async {
    ShareHelper shr = ShareHelper();
    bool? isTheme = await shr.getTheme();
    isLight = isTheme ?? false;
    notifyListeners();
  }
}