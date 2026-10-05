import 'package:get/get.dart';

class RegistrationController extends GetxController {
  // Switch jenis kelamin (true: Laki-laki, false: Perempuan)
  var isLakiLaki = true.obs;

  // Dropdown agama
  var selectedAgama = "Islam".obs;
  final List<String> listAgama = [
    "Islam",
    "Kristen",
    "Katolik",
    "Hindu",
    "Buddha",
    "Khonghucu",
  ];

  String get jenisKelamin => isLakiLaki.value ? "Laki-laki" : "Perempuan";
}