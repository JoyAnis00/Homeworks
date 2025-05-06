import 'package:flutter/material.dart';
import 'package:languagelearning_app/models/lesson_model.dart';
import 'package:audioplayers/audioplayers.dart';

class PhrasesSection extends StatelessWidget {
  final PhrasesModel phrase;
  final Color color;
  const PhrasesSection({super.key, required this.phrase, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Center(
        child: Row(
        
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                
                children: [
                  Padding(
                    padding: const EdgeInsets.only( left: 10),
                    child: Text(
                      phrase.englishWord,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Pacifico',
                        color: Colors.white,
                       
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      phrase.tokuWord,
                      style: TextStyle(
                        fontSize: 20,
                        
                        color: Colors.white,
                        fontFamily: 'Pacifico',
                       
                      ),
                    ),
                  ),
                ],
              ),
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
                  player.play(AssetSource(phrase.audio));
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
      ),
    );
  }
}
