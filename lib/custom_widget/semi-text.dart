
import 'package:flutter/material.dart';

class SemiText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 30.0, top: 8.0,),
          child: Column(
            children: [
              Text('846', style: TextStyle(color: Colors.white),),
              Text('Collect',style: TextStyle(color: Colors.white),),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 30.0, top: 6.0),
          child: Column(
            children: [
              Text('51', style: TextStyle(color: Colors.white),),
              Text('Attention',style: TextStyle(color: Colors.white),),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 30.0, top: 6.0),
          child: Column(
            children: [
              Text('267', style: TextStyle(color: Colors.white),),
              Text('Track',style: TextStyle(color: Colors.white),),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 30.0, top: 6.0),
          child: Column(
            children: [
              Text('39', style: TextStyle(color: Colors.white),),
              Text('Coupons',style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ],
    );
  }
}
