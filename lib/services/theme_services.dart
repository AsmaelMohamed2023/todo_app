import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class ThemeServices {
  // يتم تعريف مربع التخزين
  final GetStorage _box = GetStorage();
  // هذا هو المفتاح الذي سيتم استخدامه لتخزين وضع الثيم في المربع
  final _key = 'isDarkMode';

  // هذه الدالة تحفظ وضع الثيم في المربع
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);
  // هذه الدالة تقرأ وضع الثيم من المربع
  bool _loadThemeFromBox() => _box.read<bool>(_key) ?? false;

  // هذه الدالة تعيد الوضع الحالي للثيم
  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  // هذه الدالة تغير وضع الثيم
  void switchTheme() {
    // يتم تغيير وضع الثيم
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    // يتم حفظ الوضع الجديد للثيم في المربع
    _saveThemeToBox(!_loadThemeFromBox());
  }
}
