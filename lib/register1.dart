import 'package:flutter/material.dart';
import 'package:skill_match/register2.dart';


class Myregister extends StatefulWidget {
  const Myregister({super.key});

  @override
  _MyregisterState createState() => _MyregisterState();
}

class _MyregisterState extends State<Myregister> {
  String dropdownValue = 'one';

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
                    height: 40,
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
                                          color: Colors.grey),
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
                                        borderRadius: BorderRadius.circular(10),),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Phone Number',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black),
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
                                  height: 20,
                                ),
                                Container(
                                  height: 89,
                                  width: 316,
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  decoration:
                                      BoxDecoration(color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Your Full Name',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black),
                                          ),
                                          Spacer(),
                                          Icon(Icons.person_outline)
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
                                        borderRadius: BorderRadius.circular(10),),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Select Your Skill',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black),
                                          ),
                                          Spacer(),
                                          Icon(Icons.miscellaneous_services)
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        height: 40,
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          right: 20,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade300,

                                          borderRadius: BorderRadius.circular(10)

                                        ),
                                        child: DropdownButton<String>(
                                          value: dropdownValue,
                                          hint: Text('Select Your Skill'),
                                          isExpanded: true,
                                          icon: const Icon(
                                              Icons.arrow_drop_down_sharp),
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownValue = newValue!;
                                            });
                                          },
                                          items: const [
                                            DropdownMenuItem<String>(
                                              value: 'one',
                                              child: Text('Plambing'),
                                            ),
                                            DropdownMenuItem<String>(
                                              value: 'two',
                                              child: Text('Software'),
                                            ),
                                            DropdownMenuItem<String>(
                                              value: 'three',
                                              child: Text('Database'),
                                            ),
                                          ],
                                        ),
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
                                                    context, 'register2');
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
                                          builder: (context) => MyregisterR(),
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
