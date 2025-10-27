import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets básicos',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo de Widgets Flutter'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 1. Text
              const Text(
                'Hola Mundo!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),

              const SizedBox(height: 20),

              // 2. Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, color: Colors.amber, size: 30),
                  SizedBox(width: 10),
                  Text('Fila con ícono y texto'),
                ],
              ),

              const SizedBox(height: 20),

              // 3. Container
              Container(
                width: 200,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Dentro de un Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              const SizedBox(height: 20),

              // 4. Stack
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.redAccent,
                  ),
                  const Text(
                    'Stack',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // 5. Otro ejemplo con Column anidada
              Column(
                children: const [
                  Text('Elemento 1'),
                  Text('Elemento 2'),
                  Text('Elemento 3'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
