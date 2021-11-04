import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chicago Attractions',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Chicago Attractions'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    //we create a default tab controller to create 2 different tabs on your app
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Things to see in Chicago'),
          leading: Padding(
            padding: const EdgeInsets.all(0),
            child: Image.network('https://www.santoshumaninc.com/wp-content/uploads/2020/07/UIC-LOGO-900x600-hrz2-1-1030x418.png'),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(text:"General Info" ,),
              Tab(text: "Reviews",),
            ],
          ),
            flexibleSpace: FlexibleSpaceBar(
            stretchModes: const <StretchMode>[
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle,
            ],

            centerTitle: true,
              title: const Text('Shambhavi Danayak'),
              background: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.network(
                  'https://archinect.imgix.net/uploads/d6/d6c7292522d74a13ebe7a45e66e14af2.jpg',
                  fit: BoxFit.cover,
                ),
                const DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, 0.5),
                      end: Alignment.center,
                      colors: <Color>[
                        Color(0x60000000),
                        Color(0x00000000),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
    ),
        body:  TabBarView(
          children: <Widget>[

             Container(
              margin: const EdgeInsets.all(8),
              color: Colors.white,
             alignment: Alignment.topCenter,
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 children:[
                    Container(
                      margin: const EdgeInsets.all(15),
                      height: 150,
                      width: 400,
                      alignment: Alignment.topLeft,
                      decoration:  const BoxDecoration(
                     color: Colors.blueAccent,
                      image: DecorationImage(image: NetworkImage('https://cdn.choosechicago.com/uploads/2019/05/bean_dawn_5d5624c9-38bc-42c6-a0bc-3b84be7dca9b.jpg'),
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.bottomLeft,
                      ),
                   ),
                      child: Center(
                        child: Text("MILLENIUM PARK", style: TextStyle(fontSize: 20),),
                      )

                   //child: const Text('MILLENIUM, PARK'),color: Colors.white, width: 400,height: 150,
                    ),
                   Container(
                     height:150,
                     width:400,
                     alignment: Alignment.topLeft,
                     margin: const EdgeInsets.all(15),
                     decoration:  const BoxDecoration(
                       color: Colors.greenAccent,
                       image: DecorationImage(image: NetworkImage('https://news.artnet.com/app/news-upload/2014/09/Chicago-Art-Institute.jpg'),
                         fit: BoxFit.scaleDown,
                         alignment: Alignment.bottomLeft,
                       ),
                     ),

                         child: Text("ART INSTITUTE", style: TextStyle(fontSize: 20),),


                   ),
                   Container(
                     height:150,
                     width:400,
                     alignment: Alignment.topLeft,
                     margin: const EdgeInsets.all(15),
                     decoration:  const BoxDecoration(
                       color: Colors.yellowAccent,
                       image: DecorationImage(image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Navy_Pier_1190x1585.jpg/800px-Navy_Pier_1190x1585.jpg'),
                         fit: BoxFit.scaleDown,
                         alignment: Alignment.bottomLeft,
                       ),
                     ),
                         child: Text("Navy Pier", style: TextStyle(fontSize: 20),),


                   ),
  ]
               )
            ),
            Container(
                margin: const EdgeInsets.all(8),
                color: Colors.white,
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    children:[
                      Container(
                          margin: const EdgeInsets.all(15),
                          color: Colors.amber,
                          height: 150,
                          width: 400,
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: const [
                              // Icon(Icons.thumb_up_alt_sharp),
                            Align(
                            alignment: Alignment.bottomRight,
                            child: Icon(
                              Icons.thumb_up_alt_sharp,
                              color: Colors.blue,
                            ),

                            ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.thumb_down_alt_sharp,
                                  color: Colors.blue,
                                ),

                              ),
                              Text("MILLENNIUM PARK", style: TextStyle(fontSize: 20), textAlign: TextAlign.center, ),

                            ],
                          )




                      ),
                      Container(
                        margin: const EdgeInsets.all(15),
                        height: 150,
                        width: 400,
                        color: Colors.amber,
                        alignment: Alignment.topLeft,
                        //child: const Text("CHICAGO ART INSTITUTE", style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
                          child: Row(
                            children: const [
                              // Icon(Icons.thumb_up_alt_sharp),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.thumb_up_alt_sharp,
                                  color: Colors.blue,
                                ),

                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.thumb_down_alt_sharp,
                                  color: Colors.blue,
                                ),

                              ),
                              Text("CHICAGO ART INSTITUTE", style: TextStyle(fontSize: 20), textAlign: TextAlign.center, ),

                            ],
                          ),



                      ),
                      Container(
                        margin: const EdgeInsets.all(15),
                        height: 150,
                        width: 400,
                        color: Colors.amber,
                        alignment: Alignment.topLeft,
                        //child: const Text("NAVY PIER", style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
                          child: Row(
                            children: const [
                              // Icon(Icons.thumb_up_alt_sharp),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.thumb_up_alt_sharp,
                                  color: Colors.blue,
                                ),

                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.thumb_down_alt_sharp,
                                  color: Colors.blue,
                                ),

                              ),
                              Text("NAVY PIER", style: TextStyle(fontSize: 20), textAlign: TextAlign.center, ),

                            ],

                      ),
                      ),
                    ]
                )
            ),

        ],
      ),
      ),
    );



  }
}
