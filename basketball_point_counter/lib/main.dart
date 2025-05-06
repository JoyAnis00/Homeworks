import 'package:basketball_pointcounter/widgets/colum_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballPointCounterApp());
}

class BasketballPointCounterApp extends StatefulWidget {
  const BasketballPointCounterApp({super.key});

  @override
  State<BasketballPointCounterApp> createState() =>
      _BasketballPointCounterAppState();
}
class _BasketballPointCounterAppState extends State<BasketballPointCounterApp> {
  int teamAScore = 0;
  int teamBScore = 0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: const Text('Basketball Point Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ColumWidget(teamName: 'team a', teamScore: teamAScore),
                SizedBox(
                  height: 380,
                  child: VerticalDivider(
                    color: const Color.fromARGB(255, 158, 148, 148),
                    thickness: 1,
                  ),
                ),
                ColumWidget(teamName: 'team b', teamScore: teamBScore),
              ],
            ),
            const SizedBox(height: 150),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrangeAccent,
              ),
              onPressed: () {
                setState(() {
                  teamAScore = 0;
                  teamBScore = 0;
                });
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
