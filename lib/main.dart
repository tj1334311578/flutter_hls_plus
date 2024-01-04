import 'package:flutter/material.dart';
import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';

void main() {
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
    // print("====>aspectRatio:${_controller.value.aspectRatio}");
    // print(
    //     "====>aspectRatio:${_controller.value.size.width}  ${_controller.value
    //         .size.height}");
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      url = "https://lunx.maccms.xyz/v.php?f=b053313cc87f4a985d92ea1de7ef4201.m3u8";
      _counter++;
      // _controller.value.isPlaying ? _controller.pause() : _controller.play();
    });
  }

  // late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    // _controller = VideoPlayerController.networkUrl(Uri.parse(
    //     'https://moctobpltc-i.akamaihd.net/hls/live/571329/eight/playlist.m3u8'))
    //   ..initialize().then((value) {
    //     setState(() {});
    //     print(
    //         "====>aspectRatio:${_controller.value.size.width}  ${_controller
    //             .value.size.height}");
    //   }).catchError((s) {
    //     print(
    //         "====>aspectRatio:${_controller.value.size.width}  ${_controller
    //             .value.size.height} error:$s");
    //   });
  }

  var url =
      'https://lunx.maccms.xyz/v.php?f=1f0a729e483ce2611abad1c4adbe0531.m3u8';

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const YoYoPlayer(
              url: "https://lunx.maccms.xyz/v.php?f=d9c0a384dc05e51b04da0d5870328f83.m3u8",
              // 'https://sfux-ext.sfux.info/hls/chapter/105/1588724110/1588724110.m3u8',
              // videoStyle: const VideoStyle(
              //   qualityStyle: TextStyle(
              //     fontSize: 16.0,
              //     fontWeight: FontWeight.w500,
              //     color: Colors.white,
              //   ),
              //   forwardAndBackwardBtSize: 30.0,
              //   playButtonIconSize: 40.0,
              //   playIcon: Icon(
              //     Icons.add_circle_outline_outlined,
              //     size: 40.0,
              //     color: Colors.white,
              //   ),
              //   pauseIcon: Icon(
              //     Icons.remove_circle_outline_outlined,
              //     size: 40.0,
              //     color: Colors.white,
              //   ),
              //   videoQualityPadding: EdgeInsets.all(5.0),
              // ),
              // videoLoadingStyle: const VideoLoadingStyle(
              //   loading: Center(
              //     child: Text("Loading video"),
              //   ),
              // ),
              // loading: Container(
              //   // alignment: Alignment.center,
              //   // width: 30,
              //   // height: 30,
              //   // child: const CircularProgressIndicator(
              //   //   strokeWidth: 2,
              //   //   valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              //   // ),
              // ),
              allowCacheFile: true,
              // onCacheFileCompleted: (files) {
              //   print('Cached file length ::: ${files?.length}');
              //
              //   if (files != null && files.isNotEmpty) {
              //     for (var file in files) {
              //       print('File path ::: ${file.path}');
              //     }
              //   }
              // },
              // onCacheFileFailed: (error) {
              //   print('Cache file error ::: $error');
              // },
              // onFullScreen: (value) {
              //   setState(() {
              //     // if (fullscreen != value) {
              //     //   fullscreen = value;
              //     // }
              //     print('value:$value');
              //   });
              // }
            ),
            // Container(
            //   child: _controller.value.isInitialized
            //       ? AspectRatio(
            //           aspectRatio: _controller.value.aspectRatio,
            //           child: VideoPlayer(_controller),
            //         )
            //       : Container(),
            // )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // _controller.dispose();
  }
}
