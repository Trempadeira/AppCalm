import 'package:flutter/material.dart';

class AvaliarPage extends StatefulWidget {
  const AvaliarPage({super.key});

  @override
  State<AvaliarPage> createState() => _AvaliarPageState();
}

class _AvaliarPageState extends State<AvaliarPage> {
  final dropdownValue = ValueNotifier<String>('');
  final List<String> dropdownOptions = ['FULANO', 'CICLANO', 'DELTRANO'];
  int selectedEmoteIndex = -1;

  void showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Feedback Enviado'),
          content: const Text(
              'sua avaliação foi completada com êxito. Agradecemos por sua participação!'),
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
    if (selectedEmoteIndex != -1 && dropdownValue.value.isNotEmpty) {
      showConfirmationDialog();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Selecione um funcionário.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'AVALIE O FUNCIONARIO',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 129, 185, 189),
          iconTheme: const IconThemeData(color: Colors.white)),
      backgroundColor: const Color.fromARGB(255, 178, 214, 205),
      body: Center(
        child: SizedBox(
          height: 220,
          width: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ValueListenableBuilder<String>(
                valueListenable: dropdownValue,
                builder: (BuildContext context, String value, _) {
                  return SizedBox(
                    width: 380,
                    child: DropdownButtonFormField<String>(
                      isExpanded: true,
                      icon: const Icon(Icons.person),
                      hint: const Text(
                        'ESCOLHA O FUNCIONÁRIO',
                        style: TextStyle(color: Colors.white),
                      ),
                      decoration: InputDecoration(
                        label: const Text(
                          'FUNCIONÁRIO',
                          style: TextStyle(color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: const Color.fromARGB(255, 129, 185, 189),
                        filled: true,
                      ),
                      value: value.isEmpty ? null : value,
                      onChanged: (choose) => dropdownValue.value = choose!,
                      items: dropdownOptions.map((String choose) {
                        return DropdownMenuItem<String>(
                          value: choose,
                          child: Text(
                            choose,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        );
                      }).toList(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                },
              ),
              const Text(
                'CLASSIFIQUE',
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
            ],
          ),
        ),
      ),
    );
  }
}
