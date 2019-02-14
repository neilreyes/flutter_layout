import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  debugPaintSizeEnabled = false;
  debugPaintBaselinesEnabled = false;
  debugPaintPointersEnabled = false;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  
  Widget titleSection = new Container(
    padding: const EdgeInsets.all(20),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(
                  bottom:8.0,
                ),
                child: Text(
                  'Oeschinen Lake Campground',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  )
                )
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                )
              )
            ],
          )
        ),
        FavoriteWidget(),
      ],
    )
  );

  Widget buttonColumn = new Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(
        Icons.call,
        color: Colors.lightBlue,
      ),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          'Call'
        ),
      )
    ],
  );

  Column _buildButtonColumn(IconData icon, Color color, String label){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Container(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            )
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = new Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColumn(Icons.call, color, 'call'.toUpperCase() ),
          _buildButtonColumn(Icons.near_me, color, 'route'.toUpperCase() ),
          _buildButtonColumn(Icons.share, color, 'share'.toUpperCase() ),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(20),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return new MaterialApp(
      title: "Flutter layout demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo')
        ),
        body: Column(
          children: <Widget>[
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ), 
      )
    );
  }
}

class FavoriteWidget extends StatefulWidget{
  @override
  _FavoriteWidgetState createState() => new _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget>{
  bool _isFavorited = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        IconButton(
          icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border) ),
          color: Colors.red[500],
          onPressed: _toggleFavorite,
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text("${_favoriteCount}"),
          ),
        )
      ],
    );
  }

  void _toggleFavorite(){
    setState(() {
      if( _isFavorited ){
          _favoriteCount -= 1;
          _isFavorited = false;
        
      } else {
          _favoriteCount += 1;
          _isFavorited = true;
      }
    });
  }

}