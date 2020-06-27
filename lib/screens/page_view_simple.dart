import 'package:flutter/material.dart';
class PageViewSimple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        children: <Widget>[
          Container(color: Colors.pinkAccent,),
          Container(color: Colors.cyanAccent,),
          Container(color: Colors.deepPurpleAccent,),
        ],
      ),
    );
  }
}

class PageViewInfinite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(itemBuilder:  (context, index){
        return Container(
          color : (index.isEven) ? Colors.cyanAccent : Colors.pinkAccent
        );
      },
      ),
    );
  }
}

