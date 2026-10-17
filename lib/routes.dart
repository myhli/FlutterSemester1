import 'package:flutter_semester_1/pages/confirm_registration_page.dart';
import 'package:flutter_semester_1/pages/list_makanan_page.dart';
import 'package:flutter_semester_1/pages/login_page.dart';
import 'package:flutter_semester_1/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registraion = "/registraion";
  static const String confirm_registraion = "/confirm_registraion";
  static const String login = "/login";
  static const String list_makanan = "/list_makanan";

  static final myPages = [
    GetPage(name: registraion, page: () => RegistrationPage()),
    GetPage(name: confirm_registraion, page: () => ConfirmRegistrationPage()),
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
  ];
}
