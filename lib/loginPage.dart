import 'package:flutter/material.dart';
import 'package:login_app_flutter/home_page.dart';
import 'package:login_app_flutter/main.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    String passwordLogin = '';

    
    return MaterialApp(


      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: Scaffold(
        body: SingleChildScrollView( // Agregar SingleChildScrollView
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'CAFÉ',
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
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/img/coffe.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 20), // Agregar espacio entre la imagen y los campos de texto
                Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Correo',
                        labelStyle: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    
                    TextField(
                      obscureText: true,
                      onChanged: (value){
                        passwordLogin = value;
                      },
                      decoration: const InputDecoration(
                        labelText: 'Contraseña',
                        labelStyle: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20), // Agregar espacio entre los campos de texto y los botones
                    ElevatedButton(
                      onPressed: () {
                        print('Contraseña ingresada: $passwordLogin');
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => const HomePage())
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text('Entrar'),
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
                        backgroundColor: Colors.brown.shade100,
                        foregroundColor: Colors.brown,
                        side: const BorderSide(color: Colors.brown),
                        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text('Volver'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
