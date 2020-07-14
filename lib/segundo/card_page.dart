import 'package:flutter/material.dart';
class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _card_1(),
            SizedBox(height: 30.0),
            _card_2(),
            SizedBox(height: 30.0),
            _card_1(),
            SizedBox(height: 30.0),
            _card_2(),
            SizedBox(height: 30.0),
            _card_1(),
            SizedBox(height: 30.0),
            _card_2(),
            SizedBox(height: 30.0),
            _card_1(),
            SizedBox(height: 30.0),
            _card_2(),
            SizedBox(height: 30.0),
            _card_1(),
            SizedBox(height: 30.0),
            _card_2(),
            SizedBox(height: 30.0),
            _card_1(),
            SizedBox(height: 30.0),
            _card_2(),
            SizedBox(height: 30.0),
            _card_1(),
            SizedBox(height: 30.0),
            _card_2(),
            SizedBox(height: 30.0),

          ],
        )
    );
  }
  Widget _card_2(){
    final card = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        FadeInImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text('hola mundo'),
            )
        )
      ],

    );

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color:Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2,10)
          )
        ]
      ),
    );
  }
  Widget _card_1(){
    return (
        Card(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.photo_album, color: Colors.blue),
                title: Text('What is Flutter?'),
                subtitle: Text('Flutter is Google’s mobile app SDK, complete with a framework, widgets, and tools, an easy way to build and deploy visually attractive, fast mobile apps on both Android and iOS platforms.'),
              ),
              Row(
                children: <Widget>[
                  FlatButton(
                    child: Text('Cancel'),
                    onPressed: ()=>{},
                  ),
                  FlatButton(
                    child: Text('Ok'),
                    onPressed: ()=>{},
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              )
            ],
          ),
        )
    );
  }
}

