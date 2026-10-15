import 'package:flutter/material.dart';

import 'numperfecto_pantalla.dart';
import 'fibonacci_pantalla.dart';
import 'armstrong_pantalla.dart';

class MenuPrincipal extends StatelessWidget {
  MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú Principal - Práctica'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Seleccione un ejercicio:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NumperfectoPantalla(),
                  ),
                );
              },
              child: Text('Ejercicio 4: Números perfectos'),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FibonacciPantalla()),
                );
              },
              child: Text('Ejercicio 5: Serie de Fibonacci'),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArmstrongPantalla()),
                );
              },
              child: Text('Ejercicio 6: Número Armstrong'),
            ),
          ],
        ),
      ),
    );
  }
}
