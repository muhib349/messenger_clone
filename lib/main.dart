import 'package:flutter/material.dart';
import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //FlutterStatusbarManager.setFullscreen(true);

    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> profilePics = [
    "1.jpg",
    "2.jpg",
    "2.png",
    "3.jpg",
    "4.jpg",
    "7.jpg",
    "9.jpeg",
    "10.jpg",
    "11.png",
    "12.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        //brightness: Brightness.dark,
        title: Text(
          "Chats",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              fontFamily: "Roboto",
              color: Colors.black),
        ),
        leading: Container(
          padding: EdgeInsets.only(left: 16, top: 3, bottom: 3),
          child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.asset("assets/profile-pics/me.jpg"),
              )),
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 16, top: 3, bottom: 3),
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(242, 242, 242, 2),
              child: IconButton(
                  icon: Icon(Icons.photo_camera, size: 22, color: Colors.black),
                  onPressed: null),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 16, top: 3, bottom: 3),
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(242, 242, 242, 2),
              child: IconButton(
                  icon: Icon(Icons.edit, size: 22, color: Colors.black),
                  onPressed: null),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              padding: EdgeInsets.only(left: 16, top: 2, bottom: 2),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(235, 235, 235, 1),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: TextStyle()),
              ),
            ),
          ),
          Container(
            height: 85,
            margin: EdgeInsets.only(top: 8, bottom: 8, left: 16),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  width: 65,
                  margin: EdgeInsets.only(right: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(30)),
                                color: Color.fromRGBO(235, 235, 235, 1),
                                border: (index == 0)
                                    ? Border.all(width: 0)
                                    : Border.all(
                                    color: Color.fromRGBO(0, 132, 255, 1),
                                    width: 3)),
                            child: ClipOval(
                              child: (index == 0)
                                  ? IconButton(
                                  icon: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Colors.black,
                                  ))
                                  : Image.asset(
                                  "assets/profile-pics/${profilePics[index]}"),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: (index != 0) ? 20 : 0,
                              width: 18,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(9)),
                                  color: Color.fromRGBO(3, 252, 65, 1),
                                  border: Border.all(
                                      color: Colors.white, width: 3)),
                            ),
                            bottom: 0,
                            right: 0,
                          )
                        ],
                      ),
                      Text(
                        "Your Story",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,),
                      )
                    ],
                  ),
                );
              },
              itemCount: 9,
              scrollDirection: Axis.horizontal,
            ),
          ),

          Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 16),
              height: 550,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.only(bottom: 10,right: 8),
                    leading:  Stack(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(30)),
                              color: Color.fromRGBO(235, 235, 235, 1),
                              border: Border.all(
                                  color: Color.fromRGBO(0, 132, 255, 1),
                                  width: 3)),
                          child: ClipOval(
                            child: Image.asset("assets/profile-pics/${profilePics[index]}"),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            height:  18,
                            width: 18,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(9)),
                                color: Color.fromRGBO(3, 252, 65, 1),
                                border: Border.all(
                                    color: Colors.white, width: 3)),
                          ),
                          bottom: 0,
                          right: 0,
                        )
                      ],
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 6,),
                      child: Text("Jake Guerrero ${index + 1}", style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w600,
                      ),),
                    ),
                    subtitle: Text("This is message from Jake Guerrero ${index + 1}.", style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                    ),),
                    trailing: Icon(Icons.check_circle, color: Colors.grey,size:15,),
                  );}, 
                itemCount: 9,
              )
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        padding: EdgeInsets.only(left: 100, right: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 40,
              width: 40,
              child: IconButton(
                  icon: Icon(Icons.message, color: Colors.black,),
                  onPressed: null),
            ),

            Container(
              height: 40,
              width: 40,
              child: IconButton(
                  icon: Icon(Icons.group, color: Colors.grey,),
                  onPressed: null),
            ),

            Container(
              height: 40,
              width: 40,
              child: IconButton(
                  icon: Icon(Icons.navigation, color: Colors.grey,),
                  onPressed: null),
            ),
          ],
        ),
      ),
    );
  }
}
