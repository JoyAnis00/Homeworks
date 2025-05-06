import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:languagelearning_app/models/lesson_model.dart';

class CustomCard extends StatelessWidget {
  final ItemModel item;
  final Color color;
  const CustomCard({super.key, required this.item, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 240, 221, 205),
            height: 120,
            width: 80,
            child: Image.asset(item.image),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.englishWord,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                item.tokuWord,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              color: const Color.fromARGB(255, 148, 231, 159),
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(item.audio));
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
