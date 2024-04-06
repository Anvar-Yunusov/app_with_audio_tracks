import 'package:flutter/material.dart';

import '../models/item_model.dart';

class AudioAppScreen extends StatefulWidget {


  @override
  State<AudioAppScreen> createState() => _AudioAppScreenState();
}

class _AudioAppScreenState extends State<AudioAppScreen> {

  final List<Item> items = [Item(
      name: 'summer',
      audioPath: 'audios/leto.mp3',
      ImagePath: "images/leto.jpg"
  ),
    Item(
        name: 'wind',
        audioPath: 'audios/veter.mp3',
        ImagePath: "images/veter.jpg"
    ),
    Item(
        name: 'sea',
        audioPath: 'audios/more.mp3',
        ImagePath: "images/moree.jpg"
    ),
    Item(
        name: 'goat',
        audioPath: 'audios/koza.mp3',
        ImagePath: "images/koza.jpg"
    ),
    Item(
        name: 'chicken',
        audioPath: 'audios/kuricza.mp3',
        ImagePath: "images/kurica.jpg"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(items[index].ImagePath),
                )
              ),
              height: 100,
              child: ListTile(title: Text(items[index].name),
              leading: IconButton(icon: Icon(Icons.play_arrow),
              onPressed: () {},),),
            ),
          );
        })

      ),
    );
  }
}
