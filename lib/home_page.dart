import 'package:appcalm/avaliar_page.dart';
import 'package:appcalm/games_page.dart';
import 'package:appcalm/message.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedEmoteIndex = -1;

  void showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Feedback Enviado'),
          content: const Text(
              'A sua autoavaliação é fundamental para o nosso aprimoramento contínuo, agradecemos por sua contribuição.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void handleEmoteSelection(int index) {
    setState(() {
      selectedEmoteIndex = index;
    });
    showConfirmationDialog();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 178, 214, 205),
      body: Center(
        child: SizedBox(
          height: 510,
          width: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 129, 185, 189),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Mensagem do dia:\nA motivação vem de fazer as coisas acontecerem.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const Text(
                'Como está se sentindo hoje?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(5, (index) {
                  return IconButton(
                    icon: Icon(
                      index == 0
                          ? Icons.sentiment_very_dissatisfied
                          : index == 1
                              ? Icons.sentiment_dissatisfied
                              : index == 2
                                  ? Icons.sentiment_neutral
                                  : index == 3
                                      ? Icons.sentiment_satisfied
                                      : Icons.sentiment_very_satisfied,
                      size: 26,
                      color: selectedEmoteIndex == index
                          ? Colors.yellow
                          : const Color.fromARGB(255, 129, 185, 189),
                    ),
                    onPressed: () => handleEmoteSelection(index),
                  );
                }),
              ),
              SizedBox(
                width: 280,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DesabafarPage(),
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
                      const Color.fromARGB(255, 129, 185, 189),
                    ),
                  ),
                  child: const Text('DESABAFAR'),
                ),
              ),
              SizedBox(
                width: 280,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AvaliarPage(),
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
                      const Color.fromARGB(255, 129, 185, 189),
                    ),
                  ),
                  child: const Text('AVALIAR SEU COLEGA'),
                ),
              ),
              SizedBox(
                width: 280,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GamesPage(),
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
                      const Color.fromARGB(255, 129, 185, 189),
                    ),
                  ),
                  child: const Text('RELAXAR'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
