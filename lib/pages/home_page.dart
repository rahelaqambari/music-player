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
  return Padding(
    padding: const EdgeInsets.all(11),
    child: GridView.builder(
      itemCount: songList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
         mainAxisSpacing: 4,
         crossAxisSpacing: 4
        ),
        itemBuilder: (context, index){
      return Container(
        decoration: BoxDecoration(
          boxShadow: [ BoxShadow(
            blurRadius: 12,
            color: Colors.black38,
            offset: Offset(2, 4),
            spreadRadius: 12
          ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(songList[index].imgUrl,
            fit: BoxFit.cover,
            ),
    
    
          ],
        ),
      );
    }),
  );
}