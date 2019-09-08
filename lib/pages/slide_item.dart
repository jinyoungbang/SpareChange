import 'package:flutter/material.dart';
import 'package:sparechange/pages/const.dart';

class SlideItem extends StatefulWidget {

  final String img;
  final String title;
  final String address;
  final String rating;

  SlideItem({
    Key key,
    @required this.img,
    @required this.title,
    @required this.address,
    @required this.rating,
  })
      : super(key: key);

  @override
  _SlideItemState createState() => _SlideItemState();
}

class _SlideItemState extends State<SlideItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 1.2,
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
          elevation: 3.0,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height/2.5,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        "${widget.img}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 7.0),

              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "${widget.title}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),

              SizedBox(height: 7.0),

              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "${widget.address}",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 7.0),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)), child: Text("data"), onPressed: (){},)
                ],
              ),

              SizedBox(height: 100.0),

            ],
          ),
        ),
      ),
    );
  }
}