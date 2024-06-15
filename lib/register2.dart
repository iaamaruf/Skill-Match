import 'package:flutter/material.dart';
import 'package:skill_match/home.dart';

class MyregisterR extends StatefulWidget {
  const MyregisterR({super.key});

  @override
  _MyregisterRState createState() => _MyregisterRState();
}

class _MyregisterRState extends State<MyregisterR> {

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
                    height: 50,
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
                    height: 160,
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
                                  'Registration',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 89,
                                  width: 316,
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  decoration:
                                  BoxDecoration(color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Location',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black),
                                          ),
                                          Spacer(),
                                          Icon(Icons.location_on_sharp)
                                        ],
                                      ),
                                      TextField(
                                        //decoration: new InputDecoration(labelText: "Enter your number"),
                                        keyboardType: TextInputType.text,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),

                                Container(
                                  height: 89,
                                  width: 316,
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  decoration:
                                  BoxDecoration(color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Icon(Icons.camera_alt_sharp),

                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),

                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: Column(
                                              children: [
                                                Text(
                                                  'Upload Your photo',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                Text(
                                                  'Open Camera/ Galary',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),

                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
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
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Spacer(),
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(8),
                                                  bottomLeft:
                                                  Radius.circular(8)),
                                            ),
                                            child: IconButton(
                                              iconSize: 30.0,
                                              color: Colors.black,
                                              padding:
                                              EdgeInsets.only(right: 28.0),
                                              icon: Icon(
                                                  Icons.arrow_forward_outlined),
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                    context, 'home');
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
                                          builder: (context) => Myhome(userName: '',),
                                        ),
                                      );
                                    }),
                              ],
                            ),
                          )))
                ],
              ),
            )));
  }
}
