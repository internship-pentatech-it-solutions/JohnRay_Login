import "package:flutter/material.dart";
import "package:login/Pages/Register.dart";
import "package:login/components/Button.dart";

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(40),
            width: double.infinity,
            height: height * .5,
            color: Colors.black12,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("../assets/images1.jpg")),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.ads_click_sharp,
                        color: Colors.blue[900],
                        size: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'VaultCash',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Easy way for all your transactions',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.white38),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(width * .5, 50),
                          backgroundColor: Color(0xff0077b6),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                      child: Text(
                        ('Get Started'),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
