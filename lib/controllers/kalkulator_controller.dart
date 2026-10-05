import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasilHitung = 0.0.obs;

  bool cekInput(String s1, String s2, [bool isBagi = false]) {
    if (s1.isEmpty || s2.isEmpty) {
      Get.snackbar("Peringatan", "input angka harus di isi");
      return false;
    }
    if (isBagi && (double.parse(s1) == 0 || double.parse(s2) == 0)) {
      Get.snackbar("Peringatan", "Bagi gabisa karena input 0");
      return false;
    }
    return true;
  }

  void tambah(double angka1, double angka2) {
    double hasiltambah = angka1 + angka2;
    hasilHitung.value = hasiltambah;
    // snackbar
    Get.snackbar("hasil tambah", "hasil nya " + hasiltambah.toString());
  }

  void kurang(double angka1, double angka2) {
    double hasilkurang = angka1 - angka2;
    hasilHitung.value = hasilkurang;
  }

  void kali(double angka1, double angka2) {
    double hasilkali = angka1 * angka2;
    hasilHitung.value = hasilkali;
  }

  void bagi(double angka1, double angka2) {
    double hasilbagi = angka1 / angka2;
    hasilHitung.value = hasilbagi;
  }
}
