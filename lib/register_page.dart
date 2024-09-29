import 'package:appcalm/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                'CADASTRO',
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
                    '../assets/img/ImagemLogin.png',
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
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'NOME:',
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
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'SOBRENOME:',
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
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'E-MAIL:',
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
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'USUARIO:',
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
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'RUA:',
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
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'NUMERO:',
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
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'BAIRRO:',
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
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'CIDADE:',
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
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'SENHA:',
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
                      child: const Text('ENTRAR'),
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
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
