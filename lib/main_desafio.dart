import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MinhaTela(),
    );
  }
}

class MinhaTela extends StatefulWidget {
  const MinhaTela({super.key});

  @override
  State<MinhaTela> createState() => _MinhaTelaState();
}

class _MinhaTelaState extends State<MinhaTela> {
  int curtidas = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("aplicativo de curtidas"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Conteúdo Centralizado",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),

            Text(
              "Curtidas: $curtidas",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // botão curtir 💜
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      curtidas++;
                    });
                  },
                  child: const Text("💜 Curtir"),
                ),

                const SizedBox(width: 20),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (curtidas > 0) {
                        curtidas--;
                      }
                    });
                  },
                  child: const Text("👍 Discutir"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}