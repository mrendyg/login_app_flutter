import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
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
                    const Text('CAFÉ',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Nuestro Café es el mejor del mundo',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    ElevatedButton(onPressed: () {}, child: const Text('Volver'))
                  ]  
                  
                )
              ],),
          ),
        ),
      ),
    );
  }

  Widget form(){
    return const Material(
      
    );
  }
}