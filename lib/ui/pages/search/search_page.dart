import 'package:flutter/material.dart';
import 'package:quienfue/ui/pages/detail/detail_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quien fue'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const SearchBar(
              hintText: 'Escribe un nombre o apellido',
            ),
            const SizedBox(height: 10),
            ListView.separated(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DetailPage()));
                  },
                  child: Container(
                    color: Colors.transparent,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child:
                              Image.network('https://placehold.co/50x50/png'),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sebastian Piñera'),
                            Text('Ex Presidente de la Republica'),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 5);
              },
            ),
          ],
        ),
      ),
    );
  }
}
