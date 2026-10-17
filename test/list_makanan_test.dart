import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_semester_1/controllers/list_makanan_controller.dart';

void main() {
  test('ListMakananController contains food items', () {
    final controller = ListMakananController();
    expect(controller.dataMakanan.length, 6);
    expect(controller.dataMakanan.first.namaMakanan, 'Horog-Horog');
  });
}
