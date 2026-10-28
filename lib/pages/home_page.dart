import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicplayer/repositories/song_repositry.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(appBar: AppBar(title: Text('PlayList', style: GoogleFonts.pacifico(fontSize: 12),),
     ),
     drawer: Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.music_note_rounded),
              Text('Music Player',
              style: GoogleFonts.pacifico(fontSize: 19,fontWeight: FontWeight.w800,
              ),
              )
            ],
          ),
          ),
        ],
      ),
     ),
    //  body
    body: MusicPlayList(),
     );
  }
}

Widget MusicPlayList(){
  return GridView.builder(
    itemCount: songList.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index){
    return Card(
      child: Column(
        children: [
          Image.asset(songList[index].imgUrl,
          fit: BoxFit.cover,
          ),


        ],
      ),
    );
  });
}