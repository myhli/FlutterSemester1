import 'package:flutter/material.dart';
import 'package:flutter_semester_1/components/custom_button.dart';
import 'package:flutter_semester_1/components/custom_dropdown.dart';
import 'package:flutter_semester_1/components/custom_text.dart';
import 'package:flutter_semester_1/components/custom_textfield.dart';
import 'package:flutter_semester_1/controllers/registration_controller.dart';
import 'package:flutter_semester_1/routes.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegistrationController());

    TextEditingController txtUsername = TextEditingController();
    TextEditingController txtNamaLengkap = TextEditingController();
    TextEditingController txtPassword = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtnowa = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(myText: "Registration"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: CustomTextfield(
                  myHint: "input username",
                  txtController: txtUsername,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: CustomTextfield(
                  myHint: "input nama lengkap",
                  txtController: txtNamaLengkap,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: CustomTextfield(
                  myHint: "input password",
                  txtController: txtPassword,
                  isPassword: true,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: CustomTextfield(
                  myHint: "input email",
                  txtController: txtEmail,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: CustomTextfield(
                  myHint: "input nomor whatsapp",
                  txtController: txtnowa,
                  isNumeric: true,
                ),
              ),
              // Switch untuk Jenis Kelamin
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => CustomText(
                        myText: "Jenis Kelamin: ${controller.jenisKelamin}",
                        fontSize: 16,
                        myColor: Colors.green,
                      ),
                    ),
                    Obx(
                      () => Switch(
                        value: controller.isLakiLaki.value,
                        activeThumbColor: Colors.blue,
                        inactiveThumbColor: Colors.pink,
                        onChanged: (val) {
                          controller.isLakiLaki.value = val;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // Dropdown untuk Agama
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Obx(
                  () => CustomDropdown(
                    selectedValue: controller.selectedAgama.value,
                    items: controller.listAgama,
                    myLabel: "Agama",
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        controller.selectedAgama.value = newValue;
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),
              CustomButton(
                myText: "Send",
                onPressed: () {
                  // pindah dan mengirim data registrasi ke confirm page
                  Get.toNamed(
                    Routes.confirm_registraion,
                    arguments: {
                      "username": txtUsername.text,
                      "nama_lengkap": txtNamaLengkap.text,
                      "password": txtPassword.text,
                      "email": txtEmail.text,
                      "jenis_kelamin": controller.jenisKelamin,
                      "nomorwa": txtnowa.text,
                      "agama": controller.selectedAgama.value,
                      //dll
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}