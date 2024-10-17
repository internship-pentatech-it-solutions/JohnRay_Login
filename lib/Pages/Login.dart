import "package:flutter/material.dart";
import "package:login/Pages/Register.dart";
import "package:login/components/Button.dart";
import 'package:login/components/inputFields.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(40),
            width: double.infinity,
            height: height * .4,
            color: Colors.black12,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("../assets/images1.jpg")),
            ),
          ),
          Container(
            width: double.infinity,
            height: height * .6,
            padding: EdgeInsets.all(25),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Icon(
                    Icons.g_mobiledata,
                    color: Colors.red[900],
                    size: 70,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Continue to Google',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.white38),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email or Phone',
                    //suffixIcon: Icon(widget.icon),
                    hintStyle:
                        TextStyle(color: Color(0xfffffffff), fontSize: 18),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 3)),
                  ),
                )),
                Center(
                  child: Text(
                    'Forget Account?',
                    style: TextStyle(fontSize: 20, color: Colors.blue[900]),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                MyButton(
                    wid: width * 1,
                    text: 'Login',
                    tapped: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
