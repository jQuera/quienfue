import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('¿Que hizo?'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.network('https://placehold.co/100x100/png'),
              ),
              const SizedBox(width: 10),
              Text(
                'Juanito Perez Blablabla',
                style: TextStyle(fontSize: 23),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
