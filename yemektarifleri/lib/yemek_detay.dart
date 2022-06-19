import 'package:flutter/material.dart';

class YemekDetay extends StatelessWidget {
  final assetPath, cookieprice, cookiename, cardetail;

  YemekDetay(
      {this.assetPath, this.cookieprice, this.cookiename, this.cardetail});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Yemek Tariflerim',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[],
      ),
      body: ListView(children: [
        SizedBox(height: 15.0),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text("",
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 195, 255))),
        ),
        SizedBox(height: 15.0),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 150.0, width: 100.0, fit: BoxFit.contain)),
        SizedBox(height: 20.0),
        Center(
          child: Text(cookieprice,
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 195, 255))),
        ),
        SizedBox(height: 10.0),
        Center(
          child: Text(cookiename,
              style: TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 24.0)),
        ),
        SizedBox(height: 20.0),
        Center(
          child: Text(cardetail,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 20.0)),
        ),
        SizedBox(height: 20.0),
      ]),
    );
  }
}
