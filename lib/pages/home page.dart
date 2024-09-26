
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobhunt/constant/google.dart';
import 'package:jobhunt/data/detail.dart';
import 'package:jobhunt/model/model%20class.dart';
import 'package:jobhunt/pages/help&suppert.dart';
import 'package:jobhunt/pages/job%20detail.dart';
import 'package:jobhunt/pages/login.dart';
import 'package:jobhunt/pages/recdetail.dart';
import 'package:jobhunt/pages/savepage.dart';
import 'package:jobhunt/pages/setting.dart';

import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<String> images = [
    "assets/image/slider1.jpg",
    "assets/image/slider2.jpg",
    "assets/image/slider3.jpg",
    "assets/image/slider4.jpg",
    "assets/image/slider5.jpg",
    "assets/image/slider6.jpg",
    "assets/image/slider7.jpg",
  ];
  int _currentSlider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
          child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Menu',style: myStyle(20,Colors.black,FontWeight.bold),),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 30,
                            child: Icon(
                              Icons.person,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            children: [
                              Text(' Name:Suzuki'),
                              Text('Email:suki@gmail.com'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings),
                  onTap: () {
                    // Navigate to settings page
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (builder) => SettingsPage())); // Close the drawer
                  },
                ),
                ListTile(
                  title: Text('Help & Support'),
                  leading: Icon(Icons.help),
                  onTap: () {
                    // Navigate to help & support page
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (builder) =>
                            HelpAndSupportPage())); // Close the drawer
                  },
                ),
                ListTile(
                  title: Text('Saved'),
                  leading: Icon(Icons.bookmark),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (builder) => SavedPage())); // Close the drawer
                  },
                ),
                ListTile(
                  title: Text('Logout'),
                  leading: Icon(Icons.logout),
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (builder) => LoginPage(
                        ),
                      ),
                          (route) => false,
                    );
                  },
                ),
              ]
          )
      ),
      appBar: AppBar(
        elevation: 2,
        title: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/logo1.png"),
                      fit: BoxFit.cover)),
            ),
            RichText(
              text: TextSpan(
                  style: myStyle(26, primaryColor, FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "JobHunt",
                    ),
                    TextSpan(
                        text: "Go",
                        style: myStyle(26, secondaryColor, FontWeight.bold)),
                  ]),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 90,
                    width: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/image/style.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                    ),
                    child: Lottie.asset('assets/animation/home.json'),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Find the most",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Amazing Job for you!",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Hello!",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                  items: images.map((f) {
                    return Image.asset(f);
                  }).toList(),
                  options: CarouselOptions(
                      initialPage: 0,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      onPageChanged: (value, _) {
                        setState(() {
                          _currentSlider = value;
                        });
                      })),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured Jobs",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 280,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: allFeatured.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // Add your tap event handler here
                        },
                        hoverColor: Colors.grey.withOpacity(0.7),
                        child: Container(
                          width: 280,
                          margin:
                          EdgeInsets.only(right: 10, top: 10, bottom: 8),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.withOpacity(0.4)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 15),
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "${allFeatured[index].imgurl}"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "${allFeatured[index].jobTittle}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                "${allFeatured[index].jobdescribtion}",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_on,
                                          color: Colors.blue),
                                      Text(
                                        "${allFeatured[index].placeposting}",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Salary",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                      Text(
                                        "${allFeatured[index].Salary}",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                          builder: (builder) => Jobdetail(
                                            featuredModel:
                                            allFeatured[index],
                                          )));
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue,
                                      ),
                                      child: Center(
                                          child: Text(
                                            "APPLY NOW",
                                            style: TextStyle(color: Colors.white),
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Recomended Jobs",
                style: myStyle(20, Colors.black, FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allRecomended.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: index % 2 == 0 ? Colors.grey[200] : Colors.white,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 25,
                              backgroundColor: primaryColor,
                              backgroundImage:
                              AssetImage("${allRecomended[index].imgUrl}"),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("${allRecomended[index].company}"),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 70,
                            ),
                            Text("${allRecomended[index].jobTitle}"),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 70,
                            ),
                            Expanded(
                              child: Text(
                                "${allRecomended[index].description}",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                allRecomended[index].isSaved
                                    ? Icons.bookmark
                                    : Icons.bookmark_border,
                                color: Colors.blue,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (allRecomended[index].isSaved) {
                                    savedItems.removeWhere((item) =>
                                    item.company ==
                                        allRecomended[index].company);
                                  } else {
                                    savedItems.add(Recommended(
                                      experience: allRecomended[index].experience,
                                      employtype: allRecomended[index].employtype,
                                      fieldstudy: allRecomended[index].fieldstudy,
                                      company: allRecomended[index].company,
                                      jobTitle: allRecomended[index].jobTitle,
                                      description:
                                      allRecomended[index].jobTitle,
                                      imgUrl: allRecomended[index].imgUrl,
                                      salary: allRecomended[index].salary,
                                      location: allRecomended[index].location,
                                      isSaved: true,
                                    ));
                                  }
                                  allRecomended[index].isSaved =
                                  !allRecomended[index].isSaved;
                                });
                              },
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (builder) => detail(
                                    recomendedModel: allRecomended[index])));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Details...",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  buildindicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < images.length; i++)
          Container(
            margin: EdgeInsets.all(5),
            height: 7,
            width: i == _currentSlider ? 35 : 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: i == _currentSlider ? Colors.black : Colors.grey,
            ),
          ),
      ],
    );
  }
}
