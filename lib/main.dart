import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/painting.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

final List<String> imgList = [
  'https://d188rgcu4zozwl.cloudfront.net/content/B01CPSANGU/resources/1478502398',
  'https://m.media-amazon.com/images/I/619pf4AtczL.jpg',
  'https://www.vijithayapa.com/Prodpics/theeconomist.jpg',
  'https://www.emars.lk/pub/media/catalog/product/cache/3757a07198c7318a5028b7879a349f14/s/i/sinhala-work-book-1-shreniya-frnt-aa1044_1.jpg',
  'http://www.multibookshop.com/wp-content/uploads/2015/06/11.jpg',
  'http://www.multibookshop.com/wp-content/uploads/2015/06/Apuru-yaluvo.jpg'
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CompilcatedImageDemo(),
    );
  }
}

bool _alreadySaved = false;

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 600.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class CompilcatedImageDemo extends StatelessWidget {
  var rating = 3.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text('KIDS BOOKS'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  child: Column(
                children: <Widget>[
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 400.0,
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items: imageSliders,
                  ),
                ],
              )),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new IconButton(
                    icon: new Icon(
                      _alreadySaved ? Icons.favorite : Icons.favorite_border,
                      color: _alreadySaved ? Colors.red : null,
                    ),
                    onPressed: () {},
                    iconSize: 50.0,
                  ),
                  new IconButton(
                    icon: new Icon(
                      _alreadySaved ? Icons.pause : Icons.play_arrow,
                      color: _alreadySaved ? Colors.red : null,
                    ),
                    onPressed: () {},
                    iconSize: 100.0,
                  ),
                  new IconButton(
                    icon: new Icon(
                      _alreadySaved ? Icons.file_download : Icons.file_download,
                      color: _alreadySaved ? Colors.red : null,
                    ),
                    onPressed: () {},
                    iconSize: 50.0,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SmoothStarRating(
                        allowHalfRating: false,
                        onRated: (v) {},
                        starCount: 5,
                        rating: rating,
                        size: 20.0,
                        isReadOnly: true,
                        filledIconData: Icons.blur_off,
                        halfFilledIconData: Icons.blur_on,
                        color: Colors.green,
                        borderColor: Colors.green,
                        spacing: 0.0),
                    Text(
                      "125 Ratings",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Text(
                      "Public Description",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "I present you my set of Flutter layout code snippets. I will keep it short, sweet and simple with loads of visual examples.rather than showcasing the"),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Text(
                      "Information",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Released Date",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "10-06-2020",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Catergory ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "kids",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Age Range",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "07+",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Language",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Sinhala",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Size",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "65 mb",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
