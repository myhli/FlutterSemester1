import 'package:flutter_semester_1/components/custom_textfield.dart';
import 'package:flutter_semester_1/components/custom_text.dart';
import 'package:flutter_semester_1/components/custom_button.dart';
import 'package:flutter_semester_1/controllers/kalkulator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final controller = Get.put(KalkulatorController());
  // menyambingkan page dan controller

  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: CustomText(myText: "my kalkulator"),
      ),
      body: Column(
        children: [
          CustomTextfield(
            myHint: "input angka 1",
            txtController: txtangka1,
            isNumeric: true,
          ),
          CustomTextfield(
            myHint: "input angka 2",
            txtController: txtangka2,
            isNumeric: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                myText: "tambah",
                onPressed: () {
                  if (controller.cekInput(txtangka1.text, txtangka2.text)) {
                    controller.tambah(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  }
                },
              ),
              CustomButton(
                myText: "kurang",
                onPressed: () {
                  if (controller.cekInput(txtangka1.text, txtangka2.text)) {
                    controller.kurang(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  }
                },
              ),
              CustomButton(
                myText: "kali",
                onPressed: () {
                  if (controller.cekInput(txtangka1.text, txtangka2.text)) {
                    controller.kali(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  }
                },
              ),
              CustomButton(
                myText: "bagi",
                onPressed: () {
                  if (controller.cekInput(txtangka1.text, txtangka2.text, true)) {
                    controller.bagi(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  }
                },
              ),
            ],
          ),
          Obx(
            () => CustomText(
              myText: "hasil " + controller.hasilHitung.value.toString(),
              myColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
