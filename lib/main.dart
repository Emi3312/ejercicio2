

/*
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter: $counter',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: incrementCounter,
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: decrementCounter,
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Counter(),
  ));
}
*/

// Importa el paquete 'flutter/material.dart', que contiene los widgets y las herramientas necesarias para crear aplicaciones Flutter.
import 'package:flutter/material.dart';

// Define una clase llamada 'Counter' que extiende StatefulWidget.
class Counter extends StatefulWidget {
  // Sobrescribe el método 'createState' para crear una instancia de '_CounterState' cuando se llama a 'Counter()'.
  @override
  State<Counter> createState() => _CounterState();
}

// Define una clase privada '_CounterState' que extiende 'State<Counter>'.
class _CounterState extends State<Counter> {
  // Declara una variable 'counter' para mantener el estado del contador, inicializada en 0.
  int counter = 0;

  // Define una función 'incrementCounter' que aumenta el valor de 'counter' y redibuja el widget cuando se llama mediante 'setState'.
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  // Define una función 'decrementCounter' que disminuye el valor de 'counter' y redibuja el widget cuando se llama mediante 'setState'.
  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  // Sobrescribe el método 'build' para construir y retornar la interfaz de usuario.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'), // Establece el título de la barra de aplicación.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter: $counter', // Muestra el valor de 'counter' en el centro de la pantalla.
              style: TextStyle(fontSize: 20), // Establece el estilo de fuente del texto.
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Crea un botón flotante con un ícono de suma y establece 'incrementCounter' como su función de onPressed.
                FloatingActionButton(
                  onPressed: incrementCounter,
                  tooltip: 'Increment', // Establece un texto emergente para el botón.
                  child: Icon(Icons.add), // Muestra el ícono de suma en el botón flotante.
                ),
                SizedBox(width: 10), // Agrega un espacio horizontal de 10 píxeles.
                // Crea un botón flotante con un ícono de resta y establece 'decrementCounter' como su función de onPressed.
                FloatingActionButton(
                  onPressed: decrementCounter,
                  tooltip: 'Decrement', // Establece un texto emergente para el botón.
                  child: Icon(Icons.remove), // Muestra el ícono de resta en el botón flotante.
                ),
              ],
            ),
            // ==Diferencia 1: En el Código 2, se ha añadido un botón de TextButton para mostrar un Snackbar ===
            TextButton(
              onPressed: () {
                // Mostrar un snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('El contador es $counter'), // Muestra un mensaje en el Snackbar con el valor actual de 'counter'.
                  ),
                );
              },
              child: Text('Mostrar snackbar'), // Muestra un texto en el botón de TextButton.
            ),
            // ==Diferencia 2: En el Código 2, se ha añadido un campo de entrada de texto (TextField)==
            TextField(
              decoration: InputDecoration(
                labelText: 'Introduce un número', // Muestra un texto de ayuda en el campo de entrada de texto.
              ),
              onChanged: (value) {
                // Actualizar el estado del contador cuando el usuario cambia el texto en el campo de entrada.
                setState(() {
                  counter = int.parse(value); // Convierte el valor del campo de entrada en un entero y lo asigna a 'counter'.
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

// La función 'main' es el punto de entrada de la aplicación.
void main() {
  // Ejecuta la aplicación Flutter utilizando MaterialApp y establece 'Counter' como la página de inicio.
  runApp(MaterialApp(
    home: Counter(),
  ));
}
