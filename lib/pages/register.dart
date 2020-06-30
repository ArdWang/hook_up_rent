import 'package:flutter/material.dart';
import 'package:hook_up_rent/application.dart';
//import 'package:hook_up_rent/widgets/page_content.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage();

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册'),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(30.0),
        child: Container(
          child: Column(
            children: <Widget>[
              TextField(
                decoration:
                    InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: '密码',
                  hintText: '请输入密码',
                ),
                obscureText: true,
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
               TextField(
                decoration: InputDecoration(
                  labelText: '确认密码',
                  hintText: '请输入密码',
                ),
                obscureText: true,
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              RaisedButton(
                color: Colors.green,
                child: Text(
                  '注册',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                onPressed: () {
                  //TODO 登录按钮事件
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('已有账号,'),
                  FlatButton(
                      onPressed: () {
                        //Application.router.navigateTo(context, '/login');
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: Text(
                        '去登录~',
                        style: TextStyle(color: Colors.green),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
