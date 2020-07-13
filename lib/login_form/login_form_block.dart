import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';
class LoginFormBloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form Login BLOC'),
        ),
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              emailInput(),
              passwordInput(),
              Container(margin: EdgeInsets.only(top: 20.0),),
              submitBtn(),
            ],
          ),
        ));
  }

  Widget emailInput(){
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) =>(
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: 'user@server.com',
                labelText: 'Email',
                errorText: snapshot.error
            ),
            onChanged: bloc.onChangeEmail,
          )
      ),
    );
  }

  Widget passwordInput(){
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot)=>(
          TextField(
            decoration: InputDecoration(
              hintText: '******',
              labelText: 'Password',
              errorText: snapshot.error,
            ),
            onChanged: bloc.onChangePassword,
          )
      )
    );
  }

  Widget submitBtn() {
    return StreamBuilder(
      stream: bloc.isValid,
      builder: (context, snapshot) => (
          RaisedButton(
              child: Text('Enviar'),
              onPressed: (snapshot.hasData) ? bloc.submit() : null

            )
      ),
    );
  }
}

class Bloc {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  Stream<String> get email    => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);
  Stream<bool> get isValid    => CombineLatestStream.combine2(email, password, (a, b) => true);
  Function(String) get onChangeEmail    => _emailController.sink.add;
  Function(String) get onChangePassword => _passwordController.sink.add;

  final validateEmail = StreamTransformer<String,String>.fromHandlers(
      handleData: (email,sink){
        if(email.contains('@')){
          sink.add(email);
        }else{
          sink.addError('Invalid email');
        }
      }
  );

  final validatePassword = StreamTransformer<String,String>.fromHandlers(
      handleData: (pass,sink){
        if(pass.length < 5){
          sink.add(pass);
        }else{
          sink.addError('Invalid password');
        }
      }
  );

  submit(){
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;

    print('Email $validEmail');
    print('Pass $validPassword');
  }

  dispose(){
    _emailController.close();
    _passwordController.close();
  }
}

final bloc = Bloc();