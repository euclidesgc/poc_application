import 'package:flutter/material.dart';

class ProdutosPage extends StatefulWidget {
  const ProdutosPage({Key? key}) : super(key: key);

  @override
  State<ProdutosPage> createState() => _ProdutosPageState();
}

class _ProdutosPageState extends State<ProdutosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalhe do produto')),
      extendBody: true,
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1000,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                child: const Text("Ok"),
                onPressed: () {},
              ),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  child: const Text("Cancelar"),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.purple,
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                )),
          ],
        )
      ],
    );
  }
}
