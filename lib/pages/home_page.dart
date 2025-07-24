import 'package:flutter/material.dart';
import 'package:music_player/components/neu_box.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: NeuBox(child: Icon(Icons.arrow_back_ios)),
                ),
                Text(
                  "P L A Y L I S T",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: NeuBox(child: Icon(Icons.menu_rounded)),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: NeuBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'lib/images/avacado.png',
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(Icons.error, size: 50, color: Colors.red);
                      },
                    ),
                  ),
                  SizedBox(height: 8),
                  Text("Avocado"),
                ],
              ),
            ),
          ),

          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('0.00'),
              Icon(Icons.shuffle),
              Icon(Icons.repeat),
              Text('4.42'),
            ],
          ),
          SizedBox(height: 30),
          NeuBox(
            child: LinearPercentIndicator(
              lineHeight: 10,
              percent: .078,
              progressColor: Colors.green,
              backgroundColor: Colors.transparent,
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 80,
            child: Row(
              children: [
                Expanded(child: NeuBox(child: Icon(Icons.skip_previous))),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: NeuBox(child: Icon(Icons.play_arrow)),
                  ),
                ),
                Expanded(child: NeuBox(child: Icon(Icons.skip_next))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
