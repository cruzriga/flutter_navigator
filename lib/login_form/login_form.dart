import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.all(60.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                Container(margin: EdgeInsets.only(top:30.5),),
                emailInput(),
                passwordInput(),
                Container(margin: EdgeInsets.only(top:30.5),),
                submitBtn()
              ],
            ),
          ),
        ));
  }

  Widget emailInput(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'example@server.com'
      ),
      validator: (value){
        String text = 'wrong email';
        bool error = false;
        if(! value.contains('@')){
           error = true;
        }

        return (error) ? text : null;
      },
      onSaved: (value){
        print(value);
      },
    );
  }

  Widget passwordInput(){
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: false,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: '*******'
      ),
      validator: (value){
          String text = 'wrong password';
          bool error = false;
          if(value.length < 6){
            error = true;
          }

          return (error) ? text : null;
        },
      onSaved: (value){
        print(value);
      },
    );
  }

  Widget submitBtn(){
    return RaisedButton(
      child: Text("Enviar"),
      onPressed: (){
        if( formKey.currentState.validate()){
          formKey.currentState.save();
        }
      },
    );
  }
}
