import 'package:flutter/material.dart';
import 'package:hook_up_rent/application.dart';
import 'package:hook_up_rent/widgets/page_content.dart';


class LoginPage extends StatefulWidget {

  LoginPage();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '登录'
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: '用户名',
                hintText: '请输入用户名'
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
                suffixIcon: IconButton(
                  icon:Icon(showPassword? Icons.visibility_off: Icons.visibility),
                  onPressed: (){
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
              ),
              obscureText: !showPassword,
            ),
            RaisedButton(
              child: Text('登录'),
              onPressed: (){
                //TODO 登录按钮事件
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('还没有账号,'),
                FlatButton(
                  onPressed: (){
                    Application.router.navigateTo(context, '/register');
                  },
                  child: Text('去注册~')
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}