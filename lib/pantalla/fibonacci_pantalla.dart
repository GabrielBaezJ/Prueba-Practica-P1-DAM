import 'package:flutter/material.dart';

import '../logica/fibonacci_logica.dart';

class FibonacciPantalla extends StatefulWidget {
  FibonacciPantalla({super.key});

  @override
  State<FibonacciPantalla> createState() => _FibonacciPantallaState();
}

class _FibonacciPantallaState extends State<FibonacciPantalla> {
  final numeroController = TextEditingController();
  List<int> serie = [];
  String mensaje = '';
  final FibonacciLogica logica = FibonacciLogica();

  void generar() {
    final n = int.tryParse(numeroController.text);
    setState(() {
      if (n == null || n <= 0) {
        mensaje = 'Ingrese un número entero positivo válido';
        serie.clear();
      } else {
        mensaje = '';
        serie = logica.generarFibonacci(n);
      }
    });
  }

  void limpiar() {
    numeroController.clear();
    setState(() {
      serie.clear();
      mensaje = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio 5: Serie de Fibonacci'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: numeroController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Cantidad de términos (N)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(onPressed: generar, child: Text('Generar')),
                ElevatedButton(onPressed: limpiar, child: Text('Limpiar')),
              ],
            ),
            Text(mensaje, style: TextStyle(color: Colors.red)),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: serie.length,
                itemBuilder: (context, i) {
                  return ListTile(title: Text('Término ${i + 1}: ${serie[i]}'));
                },
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Volver al menú'),
            ),
          ],
        ),
      ),
    );
  }
}
