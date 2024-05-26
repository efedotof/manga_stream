import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';
import 'package:manga_stream/methods/pagemanagment.dart';
import 'package:provider/provider.dart';



@RoutePage()
class ReaderScreen extends StatefulWidget {
  const ReaderScreen({super.key});




  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  List<String> imagePaths = [
    'assets/zero-game_vol1_chapter0_page1.jpg',
    'assets/zero-game_vol1_chapter1_page1.jpg',
    'assets/zero-game_vol1_chapter2_page1.jpg',
  ];





  int capt = 0;
  bool currentlyDisplay = true;
  double _currentScale = 1.0;
  void displayAppBar() {
    if (currentlyDisplay) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    } else {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);
    }
    setState(() {
      currentlyDisplay = !currentlyDisplay;
    });
  }

  @override
  Widget build(BuildContext context) {
    var method = context.watch<PageManagments>();
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
            overlays: SystemUiOverlay.values);
        setState(() {
          currentlyDisplay = true;
        });
        return currentlyDisplay;
      },
      child: Scaffold(
        appBar: currentlyDisplay
            ? AppBar(
              automaticallyImplyLeading: false,
                title: Text(
                  "Chapters $capt",
                  style: const TextStyle(color: Color(0xFF232222)),
                ),
                centerTitle: true,
                
                backgroundColor: const Color(0xFFFFFFFF),
                actions: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.more_horiz,
                      color: Color.fromRGBO(35, 34, 34, 1),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
                leading: GestureDetector(
                  onTap: () => method.popScreensToScreen(context),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color(0xFF232222),
                  ),
                ),
              )
            : null,
         body: GestureDetector(
          onTap: displayAppBar,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (int i = 0; i < imagePaths.length; i++)
                    Column(
                      children: [
                        GestureDetector(
                          onScaleUpdate: (ScaleUpdateDetails details) {
                            setState(() {
                              // Scale factor from the details
                              double scale = _currentScale * details.scale;

                              // Limiting the scale to avoid excessive zooming
                              if (scale < 1.0) {
                                scale = 1.0;
                              } else if (scale > 3.0) {
                                scale = 3.0;
                              }

                              // Updating the scale
                              _currentScale = scale;
                            });
                          },
                          child: Transform.scale(
                            scale: _currentScale,
                            child: Image.asset(
                              imagePaths[i],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.1,
                          color: const Color(0xFF8E8D8C),
                          child: Center(
                            child: Text(
                              "Chapters ${capt + 1}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
