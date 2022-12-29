import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Marimba'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();

  void tocarSom(int numeroDaNota) {
    player.play(AssetSource('nota$numeroDaNota.wav'));
  }
  /* não consegui colocar pra sair cores diferentes e sons diferentes
  Widget criarBotaoDo() {
  return Container(
    width: 360,
    height: 80.5,
    child: TextButton(
      onPressed: () {
        tocarSom(1);
      },
      style: TextButton.styleFrom(backgroundColor: (Colors.red)),
      child: Text('DÓ '),
    ),
  );
}*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: 360,
                height: 80.5,
                child: TextButton(
                  onPressed: () {
                    tocarSom(1);
                  },
                  style: TextButton.styleFrom(backgroundColor: (Colors.red)),
                  child: Text('DÓ '),
                ),
              ),
              Container(
                width: 360,
                height: 80.9,
                child: TextButton(
                  onPressed: () {
                    tocarSom(2);
                  },
                  style: TextButton.styleFrom(backgroundColor: (Colors.pink)),
                  child: Text(
                    ' RÉ ',
                  ),
                ),
              ),
              Container(
                width: 360,
                height: 80.9,
                child: TextButton(
                  onPressed: () {
                    tocarSom(3);
                  },
                  style: TextButton.styleFrom(backgroundColor: (Colors.yellow)),
                  child: Text(' MI '),
                ),
              ),
              Container(
                width: 360,
                height: 80.9,
                child: TextButton(
                  onPressed: () {
                    tocarSom(4);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: (Colors.deepOrangeAccent)),
                  child: Text(' FÁ '),
                ),
              ),
              Container(
                width: 360,
                height: 80.9,
                child: TextButton(
                  onPressed: () {
                    tocarSom(5);
                  },
                  style: TextButton.styleFrom(backgroundColor: (Colors.green)),
                  child: Text(' SOL'),
                ),
              ),
              Container(
                width: 360,
                height: 80.9,
                child: TextButton(
                  onPressed: () {
                    tocarSom(6);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: (Colors.orange)),
                  child: Text('LÁ '),
                ),
              ),
              Container(
                width: 360,
                height: 83,
                child: TextButton(
                  onPressed: () {
                    tocarSom(7);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: (Colors.deepPurple)),
                  child: Text(' SI '),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
