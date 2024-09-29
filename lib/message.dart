import 'package:flutter/material.dart';

class DesabafarPage extends StatefulWidget {
  const DesabafarPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<DesabafarPage> {
  final List<String> messages = [];
  final TextEditingController controller = TextEditingController();

  void _sendMessage() {
    if (controller.text.isNotEmpty) {
      String userMessage = controller.text;
      setState(() {
        messages.add(userMessage);
        controller.clear();
      });
      _getResponse(userMessage);
    }
  }

  String _getResponse(String userMessage) {
    String response;
    switch (userMessage.toLowerCase()) {
      case 'oi':
        response = 'Oi! Como posso ajudar?';
        break;
      case 'tudo bem?':
        response = 'Estou bem, obrigado por perguntar!';
        break;
      case 'que horas são?':
        response = 'Desculpe, não consigo ver as horas agora.';
        break;
      default:
        response = 'Desculpe, não entendi sua pergunta.';
    }

    setState(() {
      messages.add(response);
    });

    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DESABAFE AQUI'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ChatList(messages: messages),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      hintText: 'Digite sua mensagem...',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  final List<String> messages;

  const ChatList({super.key, required this.messages});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index) {
        final message = messages[index];
        final isUserMessage = index.isEven;

        return Align(
          alignment:
              isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: isUserMessage
                  ? theme.colorScheme.primary
                  : Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              message,
              style: theme.textTheme.bodyLarge!.copyWith(
                color:
                    isUserMessage ? theme.colorScheme.onPrimary : Colors.black,
              ),
            ),
          ),
        );
      },
    );
  }
}
