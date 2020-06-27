import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class InfiniteScroll extends StatefulWidget {
  @override
  _InfiniteScrollState createState() => _InfiniteScrollState();
}

class _InfiniteScrollState extends State<InfiniteScroll> {
  final suggestions = <WordPair>[];
  final saved = <WordPair>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Infinite scroll'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.playlist_add_check),
                onPressed: ()=>{
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                        return Scaffold(
                            appBar: AppBar(
                              title: Text('Items Guardados'),
                            ),
                            body: ListView(
                              children: saved.map<ListTile>((pair)=>ListTile(
                                title: Text(pair.asPascalCase),
                                trailing: Icon(Icons.favorite, color: Colors.red,),
                              )).toList(),
                            )
                        );
                      })
                  )
                },
            )
          ],
        ),
        body: ListView.builder(
            itemBuilder: (context, i){
              if(i >= suggestions.length){ suggestions.addAll(generateWordPairs().take(10));}
             return (i.isOdd) ? Divider()
              :ListTile(
               trailing:  (saved.contains(suggestions[i])) ? Icon(Icons.favorite, color: Colors.red) :  Icon(Icons.favorite),
               title: Text(suggestions[i].asPascalCase),
               onTap: ()=>{
                 setState((){
                   (saved.contains(suggestions[i])) ? saved.remove(suggestions[i]) :  saved.add(suggestions[i]);
                  })
               },
             );
        })
    );
  }
}
