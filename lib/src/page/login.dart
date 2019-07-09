import 'package:flutter/material.dart';

/// 创建时间：2019/7/8
/// 作者：sli
/// 描述：样例页面-登陆页面，可替换为任何实际页面
class Login extends StatefulWidget {
  Login({this.arguments});

  ///额外参数
  final arguments;

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登陆"),
        centerTitle: true,
      ),
      body: GestureDetector(
        child: Center(
          child: Text("hello login"),
        ),
        onTap: () {
          Navigator.pushNamed(context, "/cityselect");
        },
      ),
    );
  }
}
