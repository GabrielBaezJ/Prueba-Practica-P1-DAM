import 'package:flutter/material.dart';

import 'numperfecto_pantalla.dart';
import 'fibonacci_pantalla.dart';
import 'armstrong_pantalla.dart';

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal - Práctica'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Seleccione un ejercicio:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NumperfectoPantalla(),
                  ),
                );
              },
              child: const Text('Ejercicio 4: Números perfectos'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FibonacciPantalla(),
                  ),
                );
              },
              child: const Text('Ejercicio 5: Serie de Fibonacci'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ArmstrongPantalla(),
                  ),
                );
              },
              child: const Text('Ejercicio 6: Número Armstrong'),
            ),
          ],
        ),
      ),
    );
  }
}
