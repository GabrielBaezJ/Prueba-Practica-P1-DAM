import 'package:flutter/material.dart';
import 'package:pry_prueba_practica_p1/logica/numperfecto_logica.dart';

class NumperfectoPantalla extends StatefulWidget {
  const NumperfectoPantalla({super.key});

  @override
  State<NumperfectoPantalla> createState() => _NumperfectoPantallaState();
}

class _NumperfectoPantallaState extends State<NumperfectoPantalla> {
  final numeroController = TextEditingController();
  String resultado = '';
  final NumeroPerfectoLogica logica = NumeroPerfectoLogica();

  void verificar() {
    final n = int.tryParse(numeroController.text);
    setState(() {
      if (n == null || n <= 0) {
        resultado = 'Ingrese un número entero positivo válido';
      } else {
        bool perfecto = logica.esPerfecto(n);
        resultado = perfecto
            ? 'El número $n es perfecto.'
            : 'El número $n no es perfecto.';
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
        title: const Text('Ejercicio 4: Números perfectos'),
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
