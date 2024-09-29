import 'package:appcalm/button_page.dart';
import 'package:flutter/material.dart';

class DadosCadastraisPage extends StatelessWidget {
  const DadosCadastraisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB2D6CD),
      body: Center(
        child: SizedBox(
          height: 620,
          width: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'DADOS CADASTRAIS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: ClipOval(
                  child: Image.asset(
                    '../assets/img/perfil2.png',
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: 'Robert',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          filled: true,
                          fillColor: Color.fromARGB(255, 178, 223, 219),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: 'Downey Jr.',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          filled: true,
                          fillColor: Color.fromARGB(255, 178, 223, 219),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    labelText: 'R******@gmailcom',
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    filled: true,
                    fillColor: Color.fromARGB(255, 178, 223, 219),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    labelText: 'Dr. Destino',
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    filled: true,
                    fillColor: Color.fromARGB(255, 178, 223, 219),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: 'Ana Axeruld',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          filled: true,
                          fillColor: Color.fromARGB(255, 178, 223, 219),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: '224',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          filled: true,
                          fillColor: Color.fromARGB(255, 178, 223, 219),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: 'Maria Regina',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          filled: true,
                          fillColor: Color.fromARGB(255, 178, 223, 219),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: 'Alvorada',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          filled: true,
                          fillColor: Color.fromARGB(255, 178, 223, 219),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    enabled: false,
                    labelText: '*************',
                    suffixIcon: Icon(Icons.lock),
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    filled: true,
                    fillColor: Color.fromARGB(255, 178, 223, 219),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 140,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        foregroundColor: const WidgetStatePropertyAll(
                          Color.fromARGB(213, 255, 255, 255),
                        ),
                        backgroundColor: const WidgetStatePropertyAll(
                            Color.fromARGB(255, 129, 185, 189)),
                      ),
                      child: const Text('ALTERAR'),
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        foregroundColor: const WidgetStatePropertyAll(
                          Color.fromARGB(213, 255, 255, 255),
                        ),
                        backgroundColor: const WidgetStatePropertyAll(
                            Color.fromARGB(255, 129, 185, 189)),
                      ),
                      child: const Text('CANCELAR'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
