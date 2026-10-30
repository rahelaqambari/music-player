import 'package:flutter/material.dart';

class SongPage extends StatefulWidget{
  final int song_Id;
  SongPage({super.key, required this.song_Id});
  @override
  State<StatefulWidget> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('Song Page'),

    ),
    body: Padding(
      padding: const EdgeInsetsGeometry.symmetric(vertical: 20),
      child: Column(
        children: [
          // Image.asset(name),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.grey.shade600
                  ),]
                ),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous),)),
              IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow_rounded),),
              IconButton(onPressed: (){}, icon: Icon(Icons.skip_next),),
            ],
          ),
        ],
      ),
    ),
   );
  }
}