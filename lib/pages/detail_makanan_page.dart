import 'package:flutter/material.dart';
import 'package:flutter_semester_1/controllers/detail_makanan_controller.dart';
import 'package:get/get.dart';

class DetailMakananPage extends StatelessWidget {
  const DetailMakananPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailMakananController());

    return Scaffold(
      appBar: AppBar(
        title: Text(controller.makanan.namaMakanan),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 10),
              child: Image.asset(
                controller.makanan.gambarPath,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              controller.makanan.namaMakanan,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Text(
              "Harga: ${controller.makanan.harga}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),

            Text(
              "Rating: ${controller.makanan.rating}",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),

            const Text(
              "Review:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              controller.makanan.review,
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 12),

            const Text(
              "Deskripsi:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              controller.makanan.deskripsi,
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
