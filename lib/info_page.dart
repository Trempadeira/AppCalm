import 'package:appcalm/dados_page.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 178, 214, 205),
      body: Center(
        child: SizedBox(
          height: 450,
          width: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: ClipOval(
                  child: Image.asset(
                    '../assets/img/perfil2.png',
                    fit: BoxFit.cover,
                    width: 110,
                    height: 110,
                  ),
                ),
              ),
              SizedBox(
                width: 280,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DadosCadastraisPage(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    foregroundColor: WidgetStateProperty.all(
                      const Color.fromARGB(213, 255, 255, 255),
                    ),
                    backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 129, 185, 189)),
                  ),
                  child: const Text('INFORMAÇÕES'),
                ),
              ),
              SizedBox(
                width: 280,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    foregroundColor: WidgetStateProperty.all(
                      const Color.fromARGB(213, 255, 255, 255),
                    ),
                    backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 129, 185, 189)),
                  ),
                  child: const Text('CLASSIFICAÇÃO MENSAL'),
                ),
              ),
              SizedBox(
                width: 280,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    foregroundColor: WidgetStateProperty.all(
                      const Color.fromARGB(213, 255, 255, 255),
                    ),
                    backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 129, 185, 189)),
                  ),
                  child: const Text('DIAGNOSTICO'),
                ),
              ),
              SizedBox(
                width: 280,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    foregroundColor: WidgetStateProperty.all(
                      const Color.fromARGB(213, 255, 255, 255),
                    ),
                    backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 129, 185, 189)),
                  ),
                  child: const Text('CONFIGURAÇÃO'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
