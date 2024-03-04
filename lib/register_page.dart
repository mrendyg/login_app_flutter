import 'package:flutter/material.dart';
import 'package:login_app_flutter/main.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Register',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    const Text('CAFÉ',
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    Text(
                      'Nuestro Café es el mejor del mundo',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                     const TextField(
                      decoration: InputDecoration(
                        labelText: 'Nombre',
                        labelStyle: TextStyle(
                          fontSize: 18,
                        )
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Apellido',
                        labelStyle: TextStyle(
                          fontSize: 18,
                        )
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Correo',
                        labelStyle: TextStyle(
                          fontSize: 18,
                        )
                      ),
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        labelStyle: TextStyle(
                          fontSize: 18,
                        )
                      ),
                    ), 
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Repetir contraseña',
                        labelStyle: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MyApp()),
                        );

                      }, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text('Registrarse')
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                       onPressed: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const MyApp()));
                       },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown.shade100,
                        foregroundColor: Colors.brown,
                        side: const BorderSide(color: Colors.brown),
                        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text('Volver'),
                    ),
                    
                  ],

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}