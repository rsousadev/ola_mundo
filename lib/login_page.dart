import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 180,
                height: 180,
                child: Image.asset('assets/images/mini-logo.png')),
            Card(
                child: Padding(
              padding: const EdgeInsets.only(
                  left: 12, right: 12, top: 20, bottom: 12),
              child: Column(
                children: [
                  TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Email')),
                  SizedBox(height: 15),
                  TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Password')),
                  SizedBox(height: 20),
                  RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(60.0)),
                    color: Colors.blue,
                    textColor:Colors.white,
                    onPressed: () {
                      if (email == 'ricardo.dmsousa@gmail.com' &&
                          password == '1234') {
                        /*Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context)=> HomePage())
                    );*/
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        print('erro');
                      }
                    },
                    child: Text('Entrar'),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/images/bg_login.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(color: Colors.black.withOpacity(0.3)),
        _body()
      ],
    ));
  }
}
