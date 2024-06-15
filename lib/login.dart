import 'package:flutter/material.dart';
import 'package:skill_match/otp.dart';
import 'package:skill_match/register1.dart';


class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  _MyloginState createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
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
                    height: 150,
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
                    height: 80,
                  ),
                  Expanded(
                      child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(120),
                            ),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 40,
                                ),

                                Container(
                                  height: 89,
                                  width: 316,
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Phone Number',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey.shade500),
                                          ),
                                          Spacer(),
                                          Icon(Icons.dialpad)
                                        ],
                                      ),
                                      TextField(
                                        //decoration: new InputDecoration(labelText: "Enter your number"),
                                        keyboardType: TextInputType.number,

                                      ),
                                    ],
                                  ),

                                ),
                                SizedBox(
                                  height: 90,
                                ),
                                InkWell(
                                    child: Container(
                                      height: 64,
                                      width: 316,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.black,
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),

                                          Text(
                                            'Next',
                                            style: TextStyle(
                                                fontSize: 18,fontWeight: FontWeight.bold,
                                              color: Colors.white
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            height: 40,
                                            width: 40,

                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(8),
                                                  bottomLeft: Radius.circular(8)),
                                            ),
                                            child: IconButton(
                                              iconSize: 30.0,
                                              color: Colors.black,
                                              padding: EdgeInsets.only(right: 28.0),
                                              icon: Icon(Icons.arrow_forward_outlined),
                                              onPressed: () {
                                                Navigator.pushNamed(context, 'otp');
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
                                          builder: (context) => Myotp(),
                                        ),
                                      );
                                    }
                                ),
                                SizedBox(
                                  height: 5,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Donot have an account?',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Myregister(),
                                            ),
                                          );
                                        },
                                        child: const Text(
                                          'Register Now',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          ),
                                        ))

                                  ],
                                ),




                              ],

                            ),
                          )
                      )
                  )
                ],
              ),
            )));
  }
}
