import 'package:flutter/material.dart';
import 'package:flutter_semester_1/components/custom_button.dart';
import 'package:flutter_semester_1/components/custom_text.dart';
import 'package:flutter_semester_1/controllers/confirm_registration_controller.dart';
import 'package:get/get.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  ConfirmRegistrationPage({super.key});

  final controller = Get.put(ConfirmRegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(myText: "Confirm Page"),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              myText: "Username: ${controller.username}",
              fontSize: 18,
              myColor: Colors.black87,
            ),
            const SizedBox(height: 10),
            CustomText(
              myText: "Nama Lengkap: ${controller.nama_lengkap}",
              fontSize: 18,
              myColor: Colors.black87,
            ),
            const SizedBox(height: 10),
            CustomText(
              myText: "Password: ${controller.password}",
              fontSize: 18,
              myColor: Colors.black87,
            ),
            const SizedBox(height: 10),
            CustomText(
              myText: "Email: ${controller.email}",
              fontSize: 18,
              myColor: Colors.black87,
            ),
            const SizedBox(height: 10),
            CustomText(
              myText: "Nomor WhatsApp: ${controller.nomorwa}",
              fontSize: 18,
              myColor: Colors.black87,
            ),
            const SizedBox(height: 10),
            CustomText(
              myText: "Jenis Kelamin: ${controller.jenis_kelamin}",
              fontSize: 18,
              myColor: Colors.black87,
            ),
            const SizedBox(height: 10),
            CustomText(
              myText: "Agama: ${controller.agama}",
              fontSize: 18,
              myColor: Colors.black87,
            ),
            const SizedBox(height: 24),
            Center(
              child: CustomButton(
                myText: "ok",
                onPressed: () {
                  Get.back();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}