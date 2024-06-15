import 'package:flutter/material.dart';
import 'package:skill_match/home2.dart';

class Myhome extends StatefulWidget {
  Myhome({
    super.key,
    required this.userName,
  });
  String userName;



  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  num get value => 4;
  String dropdownValue = 'one';




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
              color: Colors.black,

              width: 200,
              child: Column(
                children: [

                  Image.asset('asset/fig.png'),
                  SizedBox(height: 15,),
                  Text('Hi ${widget.userName}', style: TextStyle(
                    color: Colors.white, fontSize: 20

                  ), )



                ],
              ),

              //child: Image.asset('asset/fig.png')
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 59,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 140,
                      padding: EdgeInsets.only(
                        left: 30,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_sharp),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Lusaka',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 40,
                      width: 3,
                      color: Colors.black54,
                    ),
                    Container(
                      height: 60,
                      width: 140,
                      padding: EdgeInsets.only(
                        left: 17,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.water_drop_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 400,
                                    padding: (EdgeInsets.fromLTRB(30, 25, 30, 0)),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            topLeft: Radius.circular(20))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 70,
                                            ),
                                            Icon(Icons.search),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              'Search',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Services',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 55,
                                          padding: EdgeInsets.only(
                                            left: 20,
                                            right: 20,
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
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
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Location',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 55,
                                          padding: EdgeInsets.only(
                                            left: 20,
                                            right: 20,
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
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
                                                child: Text('Location'),
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
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 52,
                                              width: 155,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                      color: Colors.grey)),
                                              child: Center(
                                                child: Text(
                                                  'Cancel',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              height: 52,
                                              width: 155,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color: Colors.lightGreen),
                                              child: Center(
                                                  child: TextButton(
                                                onPressed: () =>
                                                    showDialog<String>(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) =>
                                                          AlertDialog(
                                                    actions: <Widget>[
                                                      TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  context,
                                                                  'Cancel'),
                                                          child: const Icon(
                                                            Icons.cancel,
                                                            color: Colors.grey,
                                                          )),
                                                    ],
                                                    content: Container(
                                                      width: 3620.0,
                                                      height: 350.0,
                                                      decoration:
                                                          new BoxDecoration(
                                                        shape: BoxShape.rectangle,
                                                        borderRadius:
                                                            new BorderRadius.all(
                                                                new Radius
                                                                        .circular(
                                                                    32.0)),
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                'Acme Copartation',
                                                                style: TextStyle(
                                                                    fontSize: 14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                'Plumbing',
                                                                style: TextStyle(
                                                                    fontSize: 14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .green),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Container(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(10),
                                                                height: 43,
                                                                width: 128,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                8),
                                                                    border: Border.all(
                                                                        color: Colors
                                                                            .grey)),
                                                                child: Row(
                                                                  children: [
                                                                    Text(
                                                                      'Date',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight
                                                                                  .w500,
                                                                          color: Colors
                                                                              .grey),
                                                                    ),
                                                                    Spacer(),
                                                                    Icon(
                                                                      Icons
                                                                          .calendar_month_outlined,
                                                                      color: Colors
                                                                          .green,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Container(
                                                                padding:
                                                                    EdgeInsets
                                                                        .fromLTRB(
                                                                            12,
                                                                            12,
                                                                            0,
                                                                            0),
                                                                height: 42,
                                                                width: 120,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                8),
                                                                    border: Border.all(
                                                                        color: Colors
                                                                            .grey)),
                                                                child: Row(
                                                                  children: [
                                                                    Text(
                                                                      'Time',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight
                                                                                  .w500,
                                                                          color: Colors
                                                                              .grey),
                                                                    ),
                                                                    Spacer(),
                                                                    Icon(
                                                                      Icons
                                                                          .access_time,
                                                                      color: Colors
                                                                          .green,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                'Add your Comment ',
                                                                style: TextStyle(
                                                                    fontSize: 14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            height: 107,
                                                            width: 337,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .grey)),
                                                            child: Text(
                                                              'Plumbers fit and maintain water systems in buildings. '
                                                              'This includes toilets, baths, showers, sinks, washing '
                                                              'machines and dishwashers. ',
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 40,
                                                          ),
                                                          InkWell(
                                                            child: Container(
                                                              height: 50,
                                                              width: 312,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            7),
                                                                color: Colors
                                                                    .lightGreen,
                                                              ),
                                                              child: Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Text(
                                                                    'Next',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                  Spacer(),
                                                                  Container(
                                                                    height: 40,
                                                                    width: 40,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      borderRadius: BorderRadius.only(
                                                                          topLeft:
                                                                              Radius.circular(
                                                                                  8),
                                                                          bottomLeft:
                                                                              Radius.circular(8)),
                                                                    ),
                                                                    child:
                                                                        IconButton(
                                                                      iconSize:
                                                                          30.0,
                                                                      color: Colors
                                                                          .black,
                                                                      padding: EdgeInsets.only(
                                                                          right:
                                                                              28.0),
                                                                      icon: Icon(Icons
                                                                          .arrow_forward_outlined),
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.pushNamed(
                                                                            context,
                                                                            'home');
                                                                      },
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            onTap: () =>
                                                                showDialog<
                                                                    String>(
                                                              context: context,
                                                              builder: (BuildContext
                                                                      context) =>
                                                                  AlertDialog(
                                                                actions: <Widget>[
                                                                  TextButton(
                                                                      onPressed: () =>
                                                                          Navigator.pop(
                                                                              context,
                                                                              'Cancel'),
                                                                      child:
                                                                          const Icon(
                                                                        Icons
                                                                            .cancel,
                                                                        color: Colors
                                                                            .grey,
                                                                      )),
                                                                ],
                                                                content:
                                                                    Container(
                                                                  width: 362.0,
                                                                  height: 350.0,
                                                                  decoration:
                                                                      new BoxDecoration(
                                                                    borderRadius:
                                                                        new BorderRadius
                                                                            .all(new Radius
                                                                                .circular(
                                                                            40.0)),
                                                                  ),
                                                                  child: Column(
                                                                    children: [
                                                                      Image.asset(
                                                                          'asset/Group 7.png'),
                                                                      SizedBox(
                                                                        height:
                                                                            15,
                                                                      ),
                                                                      Container(
                                                                        padding: EdgeInsets
                                                                            .fromLTRB(
                                                                                12,
                                                                                12,
                                                                                0,
                                                                                0),
                                                                        height:
                                                                            107,
                                                                        width:
                                                                            337,
                                                                        decoration: BoxDecoration(
                                                                            borderRadius: BorderRadius.circular(
                                                                                10),
                                                                            border:
                                                                                Border.all(color: Colors.grey)),
                                                                        child:
                                                                            Text(
                                                                          'Plumbers fit and maintain water systems in buildings. '
                                                                          'This includes toilets, baths, showers, sinks, washing '
                                                                          'machines and dishwashers. ',
                                                                          style: TextStyle(
                                                                              fontSize:
                                                                                  14,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: Colors.black),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                child: const Text(
                                                  'Search',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              )),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Text(
                              'Plumbing',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
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
              Text(
                'Your search result',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 110,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Text(
                          'Acme Coportation',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Plumbing',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.grey.shade200,
                                ),
                                child: Icon(Icons.phone)),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              '733682541',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.grey.shade200,
                                ),
                                child: Icon(Icons.location_on_sharp)),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              'Lusaka',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 92,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(5, (index) {
                            return Icon(
                              index < value ? Icons.star : Icons.star_border,
                              size: 15,
                              color: Colors.green,
                            );
                          }),
                        ),
                        SizedBox(
                          height: 39,
                        ),
                        Container(
                          height: 45,
                          width: 118,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Book',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 110,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Text(
                          'Acme Coportation',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Plumbing',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.grey.shade200,
                                ),
                                child: Icon(Icons.phone)),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              '733682541',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.grey.shade200,
                                ),
                                child: Icon(Icons.location_on_sharp)),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              'Lusaka',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 92,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(5, (index) {
                            return Icon(
                              index < value ? Icons.star : Icons.star_border,
                              size: 15,
                              color: Colors.green,
                            );
                          }),
                        ),
                        SizedBox(
                          height: 39,
                        ),
                        Container(
                          height: 45,
                          width: 118,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Book',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 110,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Text(
                          'Acme Coportation',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Plumbing',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.grey.shade200,
                                ),
                                child: Icon(Icons.phone)),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              '733682541',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.grey.shade200,
                                ),
                                child: Icon(Icons.location_on_sharp)),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              'Lusaka',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 92,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(5, (index) {
                            return Icon(
                              index < value ? Icons.star : Icons.star_border,
                              size: 15,
                              color: Colors.green,
                            );
                          }),
                        ),
                        SizedBox(
                          height: 39,
                        ),
                        Container(
                          height: 45,
                          width: 118,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Book',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 110,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Text(
                          'Acme Coportation',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Plumbing',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.grey.shade200,
                                ),
                                child: Icon(Icons.phone)),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              '733682541',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.grey.shade200,
                                ),
                                child: Icon(Icons.location_on_sharp)),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              'Lusaka',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 92,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(5, (index) {
                            return Icon(
                              index < value ? Icons.star : Icons.star_border,
                              size: 15,
                              color: Colors.green,
                            );
                          }),
                        ),
                        SizedBox(
                          height: 39,
                        ),
                        Container(
                          height: 45,
                          width: 118,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Book',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 110,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Text(
                          'Acme Coportation',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Plumbing',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.grey.shade200,
                                ),
                                child: Icon(Icons.phone)),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              '733682541',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.grey.shade200,
                                ),
                                child: Icon(Icons.location_on_sharp)),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              'Lusaka',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 92,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(5, (index) {
                            return Icon(
                              index < value ? Icons.star : Icons.star_border,
                              size: 15,
                              color: Colors.green,
                            );
                          }),
                        ),
                        SizedBox(
                          height: 39,
                        ),
                        Container(
                          height: 45,
                          width: 118,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Book',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 110,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Text(
                          'Acme Coportation',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Plumbing',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.grey.shade200,
                                ),
                                child: Icon(Icons.phone)),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              '733682541',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.grey.shade200,
                                ),
                                child: Icon(Icons.location_on_sharp)),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              'Lusaka',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 92,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(5, (index) {
                            return Icon(
                              index < value ? Icons.star : Icons.star_border,
                              size: 15,
                              color: Colors.green,
                            );
                          }),
                        ),
                        SizedBox(
                          height: 39,
                        ),
                        Container(
                          height: 45,
                          width: 118,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Book',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
              IconButton(
                  icon: Icon(Icons.home_filled),
                  color: Colors.black,
                      onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyhomeTwo(),
                ),
              );
            }
                  ),
                  IconButton(
                      icon: Icon(Icons.search),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyhomeTwo(),
                          ),
                        );
                      }
                      ),
                  IconButton(
                      icon: Icon(Icons.contact_page_sharp),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyhomeTwo(),
                          ),
                        );
                      }
                      ),
                  IconButton(
                      icon: Icon(Icons.contact_emergency_sharp),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Myhome(userName:'')
                          ),
                        );
                      }

                  )])),
      ),
    );
  }
}
