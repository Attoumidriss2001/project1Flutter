import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Project1(),
    );
  }
}

class Project1 extends StatefulWidget {
  const Project1({super.key});

  @override
  State<Project1> createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  List verse = [
    {
      "line1": "2- فَإِنْ شَكَوْتَ لِمَنْ طَابَ الزَّمَانُ لَهُ",
      "line2": "عَيْنَاكَ تَغْلِي وَمَنْ تَشْكُو لَهُ صَنَمُ"
    },
    {
      "line1": "3- وَإِذَا شَكَوْتَ لِمَنْ شَكْوَاكَ تُسْعِدُهُ",
      "line2": "أَضَفْتَ جُرْحًا لِجُرْحِكَ اِسْمُهُ النَّدَمُ"
    },
    {
      "line1": "من يندب الحظ يطفئ عين همته",
      "line2": "لاعين للحظ أن لم تبصر الهمم"
    },
    {
      "line1": "وَمِنْ سِوَى اللهِ نَأْوِي تَحْتَ سِدْرَتِهِ",
      "line2": "وَنَسْتَغِيثُ بِهِ عَوِّنَا وَنَعْتَصِمُ"
    },
    {
      "line1": "كُن فَيْلَسُوفًَا ترى أنَّ الجميعَ هُنَا",
      "line2": "يتقاتلون على عَدَمٍ وهُم عَدَمُ!!"
    }
  ];
  int myindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              verse[myindex]["line1"],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              verse[myindex]["line2"],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                     setState(() {
                      if (myindex == 0) {
                        myindex = 0;
                      }
                      else{
                            myindex--;
                      }}
                  
                    );
                    });
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.arrow_left, size: 40),
                ),
                SizedBox(width: 50),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (myindex == 4) {
                        myindex = 4;
                      }
                      else{
                            myindex++;
                      }}
                  
                    );
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.arrow_right, size: 40),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
