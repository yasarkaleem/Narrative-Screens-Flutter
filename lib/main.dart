import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final text = TextStyle(fontFamily: "Bonjour", fontSize: width * .05);
    final head = TextStyle(fontFamily: "Balinesse", fontSize: width * .08);
    final subhead = TextStyle(fontFamily: "Balinesse", fontSize: width * .06);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        title: Text(
          "IntroViews Package In Flutter",
          style: text,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: IntroViewsFlutter(
        [
          PageViewModel(
            pageColor: const Color(0xFF152238),
            iconImageAssetPath: 'assets/images/pilot.png',
            body: Text(
              'Haselfree  booking  of  flight  tickets  with  full  refund  on  cancelation',
            ),
            title: Text('Flights'),
            mainImage: Image.network(
              'https://icons.iconarchive.com/icons/dapino/summer-holiday/256/aeroplane-icon.png',
              // height: 285.0,
              // width: 285.0,
              alignment: Alignment.center,
            ),
            titleTextStyle: head,
            bodyTextStyle: subhead,
          ),
          PageViewModel(
              pageColor: Colors.black,
              // iconImageAssetPath: 'assets/air-hostess.png',
              bubble: Image.asset('assets/images/pilotfemale.png'),
              body: Text(
                "Go anywhere anytime. We'll drive you happy! ",
              ),
              title: Text(
                'Bus',
              ),
              titleTextStyle: head,
              bodyTextStyle: subhead,
              mainImage: Image.network(
                'https://icons.iconarchive.com/icons/bevel-and-emboss/car/256/van-bus-icon.png',
                // height: 500,
                // width: 500,
                alignment: Alignment.center,
              )),
          PageViewModel(
            pageColor: const Color(0xFF607D8B),
            iconImageAssetPath: 'assets/images/driver.png',
            body: Text(
              'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
            ),
            title: Text('Cabs'),
            mainImage: Image.network(
              'https://icons.iconarchive.com/icons/icons-land/transporter/256/Taxi-Right-Yellow-icon.png',
              // height: 285.0,
              // width: 285.0,
              alignment: Alignment.center,
            ),
            titleTextStyle: head,
            bodyTextStyle: subhead,
          ),
        ],
        showNextButton: true,
        showBackButton: true,
        backText: Text(
          "Back",
          style: subhead,
        ),
        nextText: Text("Next", style: subhead),
        doneText: Text("Done", style: subhead),
        skipText: Text("Skip", style: subhead),
        onTapDoneButton: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => HomePage(),
          //   ), //MaterialPageRoute
          // );
        },
        pageButtonTextStyles: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
