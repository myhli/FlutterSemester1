import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController _txt1 = TextEditingController();
  final TextEditingController _txt2 = TextEditingController();
  String _hasil = "0";

  void _hitung(String op) {
    double a = double.tryParse(_txt1.text) ?? 0;
    double b = double.tryParse(_txt2.text) ?? 0;

    setState(() {
      if (op == "+") _hasil = "${a + b}";
      if (op == "-") _hasil = "${a - b}";
      if (op == "*") _hasil = "${a * b}";
      if (op == "/") _hasil = b != 0 ? "${a / b}" : "Tidak bisa dibagi 0";
    });
  }

  @override
  void dispose() {
    _txt1.dispose();
    _txt2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator page")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                controller: _txt1,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                decoration: const InputDecoration(
                  hintText: "input number 1",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                controller: _txt2,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                decoration: const InputDecoration(
                  hintText: "input number 2",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _hitung("+"),
                  child: const Text(
                    "+",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _hitung("-"),
                  child: const Text(
                    "-",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _hitung("*"),
                  child: const Text(
                    "*",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _hitung("/"),
                  child: const Text(
                    "/",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "Hasil: $_hasil",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
