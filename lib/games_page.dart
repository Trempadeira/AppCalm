import 'package:flutter/material.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({super.key});

  @override
  State<GamesPage> createState() => _JogosPageState();
}

class _JogosPageState extends State<GamesPage> {
  String categoriaSelecionada = 'ANSIEDADE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GAMES'),
        backgroundColor: const Color.fromARGB(255, 129, 185, 189),
      ),
      backgroundColor: const Color.fromARGB(255, 178, 214, 205),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50, bottom: 20),
            child: Text(
              'JOGOS PRA RELAXAR',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              categoriaButton('ANSIEDADE'),
              categoriaButton('DEPRESSÃO'),
              categoriaButton('RAIVA'),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 129, 185, 189),
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget categoriaButton(String categoria) {
    bool isSelected = categoria == categoriaSelecionada;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: isSelected ? Colors.black : Colors.white,
          backgroundColor: isSelected
              ? Colors.white
              : const Color.fromARGB(255, 129, 185, 189),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          setState(() {
            categoriaSelecionada = categoria;
          });
        },
        child: Text(categoria),
      ),
    );
  }
}
