import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppBar extends StatefulWidget {
  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _myAppBar1(),
           _myAppBar2(),
            _myAppBar3(),
        ],
      ),
    );
  }

  Widget _myAppBar1() {
    return Container(
      height: 70.0,
      width: MediaQuery
          .of(context)
          .size
          .width,

      decoration: BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              const Color(0xFF5032b6),
              const Color(0xFFb765d3),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child:Container(child:IconButton(
                      icon: Icon(FontAwesomeIcons.arrowLeft,color: Colors.white,), onPressed: () {
                    //
                  }),),),
                Expanded(
                  flex: 5,
                  child:Container(child:Text('AppBar', style:
                  TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 28.0
                  ),),),),
                Expanded(
                  flex: 1,
                  child:Container(child:IconButton(
                      icon: Icon(FontAwesomeIcons.search,color: Colors.white,), onPressed: () {
                    //
                  }),),),
              ],)
        ),
      ),
    );
  }

  Widget _myAppBar2() {
    return Container(
      height: 70.0,
      width: MediaQuery
          .of(context)
          .size
          .width,

      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [ Color(0xffebac38), Color(0xffde4d2a)],
            begin: Alignment.centerRight,
            end: Alignment(-1.0, -2.0)
        ), //Gradient
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child:Container(child:IconButton(
                      icon: Icon(FontAwesomeIcons.arrowLeft,color: Colors.white,), onPressed: () {
                    //
                  }),),),
                Expanded(
                  flex: 5,
                  child:Container(child:Text('AppBar', style:
                  TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 28.0
                  ),),),),
                Expanded(
                  flex: 1,
                  child:Container(child:IconButton(
                      icon: Icon(FontAwesomeIcons.chartLine,color: Colors.white,), onPressed: () {
                    //
                  }),),),
              ],)
        ),
      ),
    );
  }

  Widget _myAppBar3() {
    return Container(
      height: 70.0,
      width: MediaQuery
          .of(context)
          .size
          .width,

      decoration: BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            const Color(0xff662d8c),
            const Color(0xffed1e79),
          ],
          begin: Alignment.centerRight,
          end: new Alignment(-1.0, -1.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child:Container(child:IconButton(
                      icon: Icon(FontAwesomeIcons.arrowLeft,color: Colors.white,), onPressed: () {
                    //
                  }),),),
                Expanded(
                  flex: 5,
                  child:Container(child:Text('AppBar', style:
                  TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 28.0
                  ),),),),
                Expanded(
                  flex: 1,
                  child:Container(child:IconButton(
                      icon: Icon(FontAwesomeIcons.cartPlus,color: Colors.white,), onPressed: () {
                    //
                  }),),),
              ],)
        ),
      ),
    );
  }
}