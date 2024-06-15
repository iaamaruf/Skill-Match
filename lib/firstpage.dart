import 'package:flutter/material.dart';
import 'package:skill_match/login.dart';

class skillMatch extends StatefulWidget {
  const skillMatch({super.key});

  @override
  _skillMatchState createState() => _skillMatchState();
}

class _skillMatchState extends State<skillMatch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Container(
                  width: 160,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.black
                  ),
                  child: Image.asset(
                    'asset/Group 1.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  height: 280,
                ),
                InkWell(
                  child: Container(
                    height: 48,
                    width: 300,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),

                        Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 18,fontWeight: FontWeight.bold
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 40,
                          width: 40,

                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                            ),
                          child: IconButton(
                            iconSize: 30.0,
                            color: Colors.white,
                            padding: EdgeInsets.only(right: 28.0),
                            icon: Icon(Icons.arrow_forward_outlined),
                            onPressed: () {
                              Navigator.pushNamed(context, 'login');
                            },
                          ),
                        ),

                      ],
                    ),
                  ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Mylogin(),
                        ),
                      );
                    }
                )
              ],
            ),
          )),
    );
  }
}
