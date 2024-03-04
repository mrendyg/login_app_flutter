import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login_app_flutter/loginPage.dart';
import 'package:login_app_flutter/register_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inicio',
      home: Navigator( // Wrap your MaterialApp with Navigator
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => Scaffold(
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                      child: Image.asset('assets/img/coffe.png', fit: BoxFit.fill),
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LoginPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          child: const Text('Iniciar sesión'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown.shade100,
                            foregroundColor: Colors.brown,
                            side: const BorderSide(color: Colors.brown),
                            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          child: const Text('Registrarse'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
