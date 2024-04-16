import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
// ...

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'LUCY GPT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

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
  MapController mapController = MapController();
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  List<String> option = ['일', '월', '년'];
  List<bool> isSelected = [false, false, false];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          //backgroundColor: Colors.grey.shade300,
          appBar: AppBar(
            // TRY THIS: Try changing the color here to a specific color (to
            // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
            // change color while the other colors stay the same.
            backgroundColor: Colors.indigo[900],
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.

            title: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              'images/image.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text("한국문화정보원",
                              style: TextStyle(color: Colors.indigo[900])),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            centerTitle: false,
            bottom: TabBar(
              dividerColor: Colors.black,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey.shade400,
              tabs: [
                Tab(
                  text: "글로벌 한류 트렌드 분석",
                ),
                Tab(
                  text: "급상승 트렌드 분석",
                ),
                Tab(
                  text: "급상승 이슈 분석",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey.shade300,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "검색조건",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //Text('버튼일'),
                          //Text('날짜고르기'),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero),
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text(
                              "오늘",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero),
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text(
                              "7일",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero),
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text(
                              "30일",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero),
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text(
                              "2일",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero),
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text(
                              "3일",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero),
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () {},
                            child: Text(
                              "검색",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                          child: Text(
                        "카테고리별 주요 현황",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customContainer(Colors.red, "K-POP", "145,822", "50.0%",
                            Icons.music_note),
                        customContainer(Colors.orange, "K-FOOD", "72,334",
                            "25.0%", Icons.food_bank_outlined),
                        customContainer(Colors.lightBlue, "K-CONTENTS",
                            "50,342", "15.0%", Icons.video_collection_outlined),
                        customContainer(Colors.indigo, "K-Fashion", "20,343",
                            "7.0%", Icons.lock),
                        customContainer(Color.fromARGB(255, 235, 153, 215),
                            "K-Beauty", "10,934", "3.0%", Icons.brush),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('국가'),
                                SizedBox(
                                  width: 20,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Global",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 20,
                                  width: 1,
                                  color: Colors.grey.shade400,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    backgroundColor: Colors.indigo[900],
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "유럽",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.indigo),
                                        borderRadius: BorderRadius.zero),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    backgroundColor: Colors.grey.shade200,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "프랑스",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "네덜란드",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "덴마크",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('채널'),
                                SizedBox(
                                  width: 20,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    backgroundColor: Colors.indigo[900],
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "전체",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 20,
                                  width: 1,
                                  color: Colors.grey.shade400,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "프랑스",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "네덜란드",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "덴마크",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Image.asset(
                      'images/image4.png',
                      fit: BoxFit.fitWidth,
                      width: MediaQuery.of(context).size.width * 0.7,
                    ),
                    // FlutterMap(
                    //   mapController: mapController,
                    //   options: MapOptions(
                    //     center: LatLng(0, 0), // Center of the map
                    //     zoom: 2,
                    //   ),
                    //   children: <Widget>[
                    //     TileLayer(),
                    //     PolygonLayer(polygons: _generatePolygons())
                    //   ],
                    // ),

                    Image.asset(
                      'images/imagecopy.png',
                      fit: BoxFit.fitWidth,
                      width: MediaQuery.of(context).size.width * 0.7,
                    ),
                    Container(
                      //========================
                      height: 10,
                      color: Colors.blue,
                    ),
                    Image.asset(
                      'images/image2.png',
                      fit: BoxFit.fitWidth,
                      width: MediaQuery.of(context).size.width * 0.7,
                    ),
                    Image.asset(
                      'images/image3.png',
                      fit: BoxFit.fitWidth,
                      width: MediaQuery.of(context).size.width * 0.7,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.orange,
                    child: Text(
                      "준비중",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.purple,
                    child: Text(
                      "준비중",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }

  Widget customContainer(
      Color color, String Title, String number, String percent, IconData icon) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.195,
      height: 120,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color, color.withOpacity(0.3)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                Title,
                style: TextStyle(color: Colors.white),
              ),
              CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(icon, color: color)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                number,
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.zero),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.grey.shade400)),
                  onPressed: () {},
                  child: Text(
                    percent,
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ],
      ),
    );
  }

  List<Polygon> _generatePolygons() {
    // Example data: You would replace this with your actual data loading logic
    List<Polygon> polygons = [];
    // Example: Define polygons for countries or regions with population data
    polygons.add(
      Polygon(
        points: [
          LatLng(39.9042, 116.4074),
          LatLng(40.9042, 116.4074),
          LatLng(40.9042, 117.4074),
          LatLng(39.9042, 117.4074)
        ],
        color: Colors.red.withOpacity(0.3),
        borderColor: Colors.red,
        borderStrokeWidth: 3,
      ),
    );
    // More polygons would be added here based on real data
    return polygons;
  }
}
