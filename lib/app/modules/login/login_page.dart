import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('lib/assets/tdc_fundo.jpeg'), fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black54),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 50),
                child: Image.asset(
                  'lib/assets/tdc.png',
                  width: 300,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(border: OutlineInputBorder(), fillColor: Colors.white60, filled: true, hintText: 'Login', focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white60,
                    filled: true,
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .9,
                height: 50,
                child: RaisedButton(
                  child: Text('Entrar'),
                  onPressed: () {},
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
