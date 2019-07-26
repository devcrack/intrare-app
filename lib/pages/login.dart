import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (
      appBar: AppBar(
        title: Text('Inicio'),
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
              _showLogo(),
              _showEmailInput(),
              _showPasswordInput(),
              _showPrimaryButton(),
              _showSecondaryButton()
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
                0.0, 10.0, 0.0, 0.0),
                child: CircleAvatar(
                 backgroundColor: Colors.transparent,
                 radius: 150.0,
                 child: Image.asset('images/logo1.png'),
                )
        )
    );

  }

  Widget _showEmailInput() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: new InputDecoration(
          hintText: 'Email',
          contentPadding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          icon: new Icon(
            Icons.email,
            color: Colors.grey,
          )
        ),
        validator: (value)=>value.isEmpty ? 'Enter Email' : null,
        onSaved: (value) =>_email = value.trim(), // Here we save the Entered Email.
      )
    );
  }

  Widget _showPasswordInput() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        decoration: new InputDecoration(
          hintText: 'Password',
          contentPadding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          icon: new Icon(Icons.lock, color: Colors.grey)
        ),
        validator: (value)=>value.isEmpty ? 'Enter Password' : null,
        onSaved: (value) =>_email = value.trim(), // Here we save the Entered Password.
      )
    );
  }


  Widget _showPrimaryButton(){
    return new Padding(
      padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
      child: SizedBox(
        height: 50.0,
        child : new RaisedButton(
            elevation: 5.0,
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            color: Colors.blue,
            child: new Text(
              'Ingresar',
              style: new TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            onPressed: null)
      )
    );
  }

  Widget _showSecondaryButton() {
    return new Padding(padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
        child: new FlatButton(
            child: new Text('Crear Cuenta',
              style: new TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            onPressed: null)
    );

  }
}
//Testing bot
/*
*
*|| Testing bot
* */