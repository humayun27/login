import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/pages/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton =false;

  @override
  Widget build(BuildContext context) {

    return Material(
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: Image.asset("images/new.png"),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Login Page",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30,
          )),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Your Uder Id",
              labelText: "User ID",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Your Password",
              labelText: "Password",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            borderRadius: BorderRadius.circular(changeButton? 45 : 10),
            color: Colors.blue,
            child: InkWell(
              borderRadius: BorderRadius.circular(changeButton? 45 : 10),
              splashColor: Colors.red,
              onTap: () async {
                setState(() {
                 changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                await Navigator.pushNamed(context, MyRoute.homeRout);
                setState(() {
                  changeButton = false;
                });
              },
              child: AnimatedContainer(
                alignment: Alignment.center,
                width: changeButton ? 50 : 120 ,
                height: 60,

                duration: Duration(seconds: 1),
                child:changeButton ? Icon(Icons.done,
                color: Colors.white,
                )
                : Text("Login",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                ),

              ),
            ),
          ),

          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, MyRoute.homeRout);
          //   },
          //   child: Text("Login"),
          //   style: TextButton.styleFrom(
          //       minimumSize: Size(100, 50), backgroundColor: Colors.blue
          //   ),
          // ),
        ],
      ),
    );
  }
}
