import 'package:flutter/material.dart';
import 'package:login/Pages/Index.dart';
import 'package:login/Pages/Login.dart';
import 'package:login/components/Button.dart';
import 'package:login/components/inputFields.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create an \n account',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Sign up with',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white38),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(width * .4, 50),
                        backgroundColor: Color(0xff222222),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6))),
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: context(){Register()}))
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.g_mobiledata,
                          color: Colors.amber,
                          size: 45,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Google',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    )),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(width * .4, 50),
                        backgroundColor: Color(0xff222222),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6))),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.facebook_outlined,
                          color: Colors.blue[900],
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Facebook',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                InputFields(label: 'Username', hint: 'Username'),
                SizedBox(
                  height: 15,
                ),
                InputFields(label: "Email", hint: 'jglitse@gmail.com'),
                SizedBox(
                  height: 15,
                ),
                InputFields(
                  label: 'Password',
                  hint: 'HelloWorld',
                  icon: Icons.remove_red_eye_outlined,
                ),
                SizedBox(
                  height: 15,
                ),
                MyButton(
                    wid: width * .5,
                    text: 'Register',
                    tapped: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    }
                    // tapped: Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => IndexPage())),
                    )
              ],
            )
          ],
        ),
      ),
    );
  }
}
