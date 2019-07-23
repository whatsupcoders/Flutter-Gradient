import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1496254738104-fc408389bbac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          _titleContainer(),
          SizedBox(height: 10.0),
          _detailsContainer(),
          _chipContainer(),
          SizedBox(height: 30.0),
          _listView(),
          _nextButton(),
        ],
      ),
    );
  }

  Widget _listView(){
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                  const Color(0xFF5032b6),
                  const Color(0xFFb765d3),
                ],
                begin: Alignment.centerRight,
                end: new Alignment(-1.0, -1.0),
              ),
            ),
          ),
          SizedBox(width: 20.0),
          Container(
            width: 160.0,
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                  const Color(0xffebac38),
                  const Color(0xffde4d2a),

                ],
                begin: Alignment.centerRight,
                end: new Alignment(-1.0, -1.0),
              ),
            ),
          ),
          SizedBox(width: 20.0),
          Container(
            width: 160.0,
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
          ),
          SizedBox(width: 20.0),
          Container(
            width: 160.0,
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                  const Color(0xFF1CD8D2),
                  const Color(0xFF93EDC7),
                ],
                begin: Alignment.centerRight,
                end: new Alignment(-1.0, -1.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _nextButton() {
    return Container(child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: myButtons("Prev", 0xFF975efe, 0xFF448afe),),
        Container(child: myButtons("Next", 0xFF975efe, 0xFF448afe),)
      ],));
  }

  Widget _titleContainer() {
    return Container(child: Text('Oeschinen Lake, Kandersteg, Switzerland',style:TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 20.0
    ),));
  }

  Widget _detailsContainer() {
    return Container(child: Text(
      'Oeschinen Lake is a lake in the Bernese Oberland, Switzerland, 4 kilometres east of Kandersteg in the Oeschinen valley. At an elevation of 1,578 metres, it has a surface area of 1.1147 square kilometres.',style:TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w300,
        fontSize: 18.0
    ),));
  }


  RaisedGradientChip myChips(String chipName, int color1, int color2) {
    return RaisedGradientChip(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Container(child: Text(
                chipName,
                style: TextStyle(color: Colors.white),
              ),),
            ),
            Container(child: Container(child: IconButton(
                icon: Icon(
                  FontAwesomeIcons.times, color: Colors.white, size: 15.0,),
                onPressed: () {
                  //
                }),),),
          ],),
        gradient: LinearGradient(
          colors: <Color>[Color(color1), Color(color2)],
        ),
        onPressed: () {
          print('button clicked');
        }
    );
  }

  RaisedGradientButton myButtons(String chipName, int color1, int color2) {
    return RaisedGradientButton(
        child: Text(
          chipName,
          style: TextStyle(color: Colors.white),
        ),
        gradient: LinearGradient(
          colors: <Color>[Color(color1), Color(color2)],
        ),
        onPressed: () {
          print('button clicked');
        }
    );
  }

  Widget _chipContainer() {
    return Column(
      children: <Widget>[
        SizedBox(height: 40.0),
        Wrap(
          direction: Axis.horizontal,
          spacing: 10.0,
          runSpacing: 5.0,
          children: <Widget>[
            myChips("chip1", 0xFF02b5e0, 0xFF02cabd),
            myChips("chip2", 0xFF965ffe, 0xFF3c8efe),
            myChips("chip3", 0xFF07dfaf, 0xFF47e544),
            myChips("chip4", 0xFFffda00, 0xFFffa500),
            myChips("chip5", 0xFFffa15b, 0xFFfe6075),
          ],
        ),

      ],);
  }

}

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 50.0,
      decoration: BoxDecoration(gradient: gradient, boxShadow: [
        BoxShadow(
          color: Colors.grey[500],
          offset: Offset(0.0, 1.5),
          blurRadius: 1.5,
        ),
      ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}

class RaisedGradientChip extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientChip({
    Key key,
    @required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 30.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24.0),
          gradient: gradient,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500],
              offset: Offset(0.0, 1.5),
              blurRadius: 1.5,
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}