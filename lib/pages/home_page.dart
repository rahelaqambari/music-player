import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicplayer/pages/setting.dart';
import 'package:musicplayer/pages/song_page.dart';
import 'package:musicplayer/repositories/song_repositry.dart';
import 'package:musicplayer/theme/theme-provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(appBar: AppBar(title: Text('PlayList', style: GoogleFonts.pacifico(fontSize: 12,color: const Color.fromARGB(255, 207, 15, 121)),),
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
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()),
              );
            },
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
  Padding(
    padding: const EdgeInsets.all(14),
    child: GridView.builder(
      itemCount: songList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
         mainAxisSpacing: 12,
         crossAxisSpacing: 12,  
        ),
        itemBuilder: (context, index) {
          final song = songList[index];
          final isDark = Theme.of(context).brightness == Brightness.dark;

          final raduis = BorderRadius.circular(12);
      return Material(
        color: Theme.of(context).colorScheme.surface,
        elevation: isDark ? 3 :2,
        shadowColor: Colors.black.withValues(alpha: isDark ? 0.45 : 0.50),
        borderRadius: raduis,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          borderRadius: raduis,
          onTap: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context)=> 
                SongPage(song_Id: song.id),),
            );
          },
          child: Ink(
            decoration: BoxDecoration(
              color: Provider.of<ThemeProvider>(context).isDarkMode
              ? Colors.black 
              : Colors,white,
              borderRadius: raduis,
            ),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(songList[index].imgUrl,
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
            ), 
            Text(songList[index].singerName,
            style: TextStyle(fontSize: 18,
            fontWeight: FontWeight.w600
            ),),   
            Text(songList[index].tittle,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w800,
              color: const Color.fromARGB(255, 207, 15, 121)
            ),
            ),
            Align( 
              alignment: AlignmentGeometry.bottomEnd,
              child: 
            Icon(Icons.remove_red_eye_rounded) ,) 
          ],
        ),
          ),
        ),
      );
    ),
  );
}

        
      
      
      
      
      