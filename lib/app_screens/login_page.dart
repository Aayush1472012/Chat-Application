import 'package:flutter/material.dart';

class LogForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Login();
  }

}

class _Login extends State<LogForm>{
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.green,Colors.redAccent]
            )
        ),
        child: ListView(
          children: [

            //getImageAsset(),

            Container(width: 50.0,height: 50.0,),

            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                style: textStyle,
                controller: emailController,
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "eg.abc123@gmail.com",
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                style: textStyle,
                controller: passwordController,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "******",
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(20.0),
              child: RaisedButton(
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                elevation: 6.0,
                color: Colors.blueGrey,
                onPressed: (){
                  setState(() {

                  });
                },
              ),
            ),

          ],
        ),
      ),
    );
  }

}