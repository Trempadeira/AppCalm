import 'package:flutter/material.dart';

class NotiPage extends StatelessWidget {
  const NotiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 178, 214, 205),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.notifications_sharp),
                title: Text('CADASTRO'),
                subtitle: Text('SEU USUARIO FOI ALTERADO'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.notifications_sharp),
                title: Text('MENSAGEM'),
                subtitle: Text('UMA MENSAGEM FOI RECEBIDA'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
