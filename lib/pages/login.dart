import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Stack(
        children: <Widget>[
          _showBody()
        ],
      ),
    );
    return null;
  }

  Widget _showBody() {
    return new Container(
      child: new Form(
          child: ListView(
//            shrinkWrap: null,
            children: <Widget>[
              _showLogo()
            ],
          )
      ),
    );
  }

  Widget _showLogo() {
    return new Hero(
        tag: 'intrare',
        child: Padding(
            padding: EdgeInsets.fromLTRB(
                0.0, 70.0, 0.0, 0.0),
                child: CircleAvatar(
                 backgroundColor: Colors.transparent,
                 radius: 48.0,
                 child: Image.asset('assets/logos/logo_hor.png')
                )
        )
    );

  }
}

/*
*
*
* */