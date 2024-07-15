import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('instagram'),
        actions: <IconButton>[
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_rounded)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat_bubble_outline_rounded))
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[_buildStories()],
            ),
          ),
          //comenzamos los fit del cuerpo
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[Text('paso 1'), Text('Paso 2')],
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}

//Espacio de la historias en Screen
Widget _buildStories() {
  return SizedBox(
    height: 100.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10, // Número de historias
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              const CircleAvatar(
                radius: 30.0,
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
              ),
              const SizedBox(height: 4.0),
              Text('Story $index'),
            ],
          ),
        );
      },
    ),
  );
}
