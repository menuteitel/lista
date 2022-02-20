// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List<Map> frutas = [
    {
      'nombre': 'Manzana',
      'cantidad': '2 kg',
    },
    {
      'nombre': 'Durazno',
      'cantidad': '1 kg',
    },
    {
      'nombre': 'Banana',
      'cantidad': '1 kg',
    },
    {
      'nombre': 'Damasco',
      'cantidad': '1.5 kg',
    },
    {
      'nombre': 'Frutilla',
      'cantidad': '3 kg',
    },
    {
      'nombre': 'Kiwi',
      'cantidad': '2 kg',
    },
    {
      'nombre': 'Mango',
      'cantidad': '2.5 kg',
    },
    {
      'nombre': 'Manzana',
      'cantidad': '2 kg',
    },
    {
      'nombre': 'Durazno',
      'cantidad': '1 kg',
    },
    {
      'nombre': 'Banana',
      'cantidad': '1 kg',
    },
    {
      'nombre': 'Damasco',
      'cantidad': '1.5 kg',
    },
    {
      'nombre': 'Frutilla',
      'cantidad': '3 kg',
    },
    {
      'nombre': 'Kiwi',
      'cantidad': '2 kg',
    },
    {
      'nombre': 'Mango',
      'cantidad': '2.5 kg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Column(
          children: [
            const Text('Lista de Frutas'),
            // TextButton(
            //   onPressed: () {
            //     print('boton apretado');
            //     // Navigator.pop(context);
            //     Navigator.popUntil(context, ModalRoute.withName('/'));
            //   },
            //   child: Text('Volver atras'),
            // ),
            Expanded(
              child: ListView.builder(
                itemCount: frutas.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(frutas[index]['nombre']),
                    subtitle: Text('${frutas[index]['cantidad']}'),
                    trailing: const Icon(Icons.check),
                    tileColor: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
