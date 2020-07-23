import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xffD97EA7),
            alignment: Alignment.topLeft,
            height: 150,
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          RawMaterialButton(
                            onPressed: null,
                            child: Icon(
                              Icons.person_outline,
                              size: 25,
                              color: Colors.grey,
                            ),
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.grey)),
                            padding: EdgeInsets.all(10.0),
                            elevation: 2.0,
                            // color: Colors.white,
                            fillColor: Colors.white,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: Text(
                              "12",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueGrey[200],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text(
                          "YOU",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RawMaterialButton(
                        onPressed: null,
                        child: Icon(
                          Icons.trending_up,
                          size: 25,
                          color: Colors.black,
                        ),
                        shape: CircleBorder(
                            side:
                            BorderSide(color: Colors.pink[100], width: 2)),
                        padding: EdgeInsets.all(10.0),
                        elevation: 2.0,
                        // color: Colors.white,
                        fillColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text(
                          "TRENDING",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RawMaterialButton(
                        onPressed: null,
                        child: Icon(
                          Icons.favorite_border,
                          size: 25,
                          color: Colors.grey,
                        ),
                        shape:
                        CircleBorder(side: BorderSide(color: Colors.grey)),
                        padding: EdgeInsets.all(10.0),
                        elevation: 2.0,
                        // color: Colors.white,
                        fillColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text(
                          "HEALTH",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(60)),
                color: Color(0xffffffff),
              ),
            ),
          ),
          Container(
            color: Color(0xff8C4EBB),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
            height: 150,
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(60)),
                color: Color(0xffD97EA7),
              ),
              child: returnRowWidget(
                  "TODAY at 5:30 PM",
                  "Yoga and Meditation for Beginners",
                  "Join Marie, John & 10 others"),
            ),
          ),
          Container(
            color: Color(0xff14042A),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(0, 300, 0, 0),
            height: 150,
            child: Container(
              child: returnRowWidget(
                  "TUESDAY at 4:30 PM",
                  "Practice French, English and Hindi",
                  "Join Ryan, Bob & 12 others"),
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(60)),
                color: Color(0xff8C4EBB),
              ),
            ),
          ),
          Container(
            color: Color(0xff999EBB),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(0, 450, 0, 0),
            height: 155,
            child: Container(
              child: returnRowWidget(
                  "FRIDAY at 6:00 PM",
                  "Adobe XD Live Event in Europe",
                  "Join Ryan, Bob & 14 others"),
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(60)),
                color: Color(0xff14042A),
              ),
            ),
          ),
          Container(
            // color: Color(0xffCE64A5),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(0, 600, 0, 0),
            height: 150,
            color: Color(0xff999EBB),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: (null),
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
            ),
          )
          //#14042A #999EBB #FFFFFF
        ],
      ),
    );
  }

  Widget returnRowWidget(String timeText, String headerText, String likesText) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 30, 0, 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                constraints: BoxConstraints(minWidth: 100, maxWidth: 200),
                child: Text(
                  timeText,
                  style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
                child: Text(
                  headerText,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(
                              "https://pdcode-public-images.s3.amazonaws.com/selective-focus-photo-of-woman-1542085.jpg")),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
                        child: CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage(
                                "https://pdcode-public-images.s3.amazonaws.com/adult-beard-boy-casual-220453.jpg")),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(likesText,
                        style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

