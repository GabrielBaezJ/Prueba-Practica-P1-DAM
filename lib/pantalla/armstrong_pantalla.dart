import 'package:flutter/material.dart';

import '../logica/armstrong_logica.dart';

class ArmstrongPantalla extends StatefulWidget {
  const ArmstrongPantalla({super.key});

  @override
  State<ArmstrongPantalla> createState() => _ArmstrongPantallaState();
}

class _ArmstrongPantallaState extends State<ArmstrongPantalla> {
  final numeroController = TextEditingController();
  String resultado = '';
  final ArmstrongLogica logica = ArmstrongLogica();

  void verificar() {
    final n = int.tryParse(numeroController.text);
    setState(() {
      if (n == null || n <= 0) {
        resultado = 'Ingrese un número entero positivo válido';
      } else {
        bool armstrong = logica.esArmstrong(n);
        resultado = armstrong
            ? 'El número $n es Armstrong.'
            : 'El número $n no es Armstrong.';
      }
    });
  }

  void limpiar() {
    numeroController.clear();
    setState(() {
      resultado = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 6: Número Armstrong'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: numeroController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Ingrese un número entero positivo',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: verificar,
                  child: const Text('Verificar'),
                ),
                ElevatedButton(
                  onPressed: limpiar,
                  child: const Text('Limpiar'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              resultado,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Volver al menú'),
            ),
          ],
        ),
      ),
    );
  }
}
