import 'package:flutter/material.dart';
import 'package:flutter_semester_1/controllers/list_makanan_controller.dart';
import 'package:flutter_semester_1/pages/detail_makanan_page.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List Makanan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.dataMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.dataMakanan[index];
            return InkWell(
              onTap: () { 
                Get.to(() => const DetailMakananPage(), arguments: makanan);
              },
              child: ListTile(
                tileColor: Colors.blue.shade50,
                title: Text(
                  makanan.namaMakanan,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  makanan.harga,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.green[700],
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            );
          },
        ),
      ),
    );
  }
}
