import 'package:flutter/material.dart';
import 'package:mobile_ui/widgets/InputTextWidget.dart';
import 'package:mobile_ui/widgets/ButtonWidgets.dart';
import 'package:mobile_ui/widgets/ButtonIconWidget.dart';
import 'package:mobile_ui/widgets/ItemWidget.dart';
import 'package:mobile_ui/widgets/BannerWidget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List listItem = [
    [
      "item001",
      "Air Max 2090",
      120,
      5,
    ],
    [
      "item002",
      "Nike React Miler",
      170,
      5
    ],
    [
      "item003",
      "Nike Air Max 270",
      112,
      5
    ],
    [
      "item001",
      "Air Max 2090",
      120,
      2,
    ],
    [
      "item002",
      "Nike React Miler",
      170,
      1
    ],
    [
      "item003",
      "Nike Air Max 270",
      112,
      3
    ],
  ];

  
  List<Widget> bannerList = [
    BannerWidgets(icon: "item001", name: "Air Max 2090"),
    BannerWidgets(icon: "item002", name: "Nike React Miler "),
    BannerWidgets(icon: "item003", name: "Nike Air Max 270"),
  ];

  int currentPos = 0;
  TextEditingController searchEditingController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
            height: size.height * 0.35,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(38),
                      bottomRight: Radius.circular(38),
                    ),
                    color: Color(0XFF1152FD),
                  ),                  
                  width: MediaQuery.of(context).size.width,
                  height: size.height * 0.25,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.075,
                      vertical: size.height * 0.01
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InputTextWidget( 
                          width: size.width - 62 - (size.width * 0.1 * 2),
                          hintText: "Search",
                          isSearch: true,
                          textEditingController: searchEditingController,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.01,
                          ),
                          child: ButtonIconWidgets(
                            size: 62,
                            colorBg: Colors.white, 
                            onTap: ()=>{}, 
                            icon: "cameraIcon"
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 0.0,
                  right: 0.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                    child: Column(
                      children: [
                        Container(
                          width: size.width * 0.85,
                          height: size.height * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(0, 10), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.15,
                                width: size.width * 0.75,
                                child: CarouselSlider(
                                  options: CarouselOptions(
                                    enlargeCenterPage: true,
                                    enableInfiniteScroll: true,
                                    autoPlay: true,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        currentPos = index;
                                      });
                                    }
                                  ),
                                  items: bannerList.toList(),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: bannerList.map((data) {
                                  int index = bannerList.indexOf(data);
                                  return Container(
                                    width: 8.0,
                                    height: 8.0,
                                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: currentPos == index
                                          ? Color.fromRGBO(0, 0, 0, 0.9)
                                          : Color.fromRGBO(0, 0, 0, 0.4),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.075),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonIconWidgets(
                    size: 62,
                    colorBg: Color(0X201151FB), 
                    onTap: ()=>{}, 
                    icon: "menIcon",
                    header: "Men",
                  ),
                  ButtonIconWidgets(
                    size: 62,
                    colorBg: Color(0X201151FB), 
                    onTap: ()=>{}, 
                    icon: "womenIcon",
                    header: "Women",
                  ),
                  ButtonIconWidgets(
                    size: 62,
                    colorBg: Color(0X201151FB), 
                    onTap: ()=>{}, 
                    icon: "kidsIcon",
                    header: "Kids",
                  ),
                  ButtonIconWidgets(
                    size: 62,
                    colorBg: Color(0X201151FB), 
                    onTap: ()=>{}, 
                    icon: "saleIcon",
                    header: "Sale",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Color(0XFFF7F8F9),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.075,
                      vertical: size.height * 0.025
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New Products",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        ButtonWidgets(
                          colorBg: Color(0XFF1152FD),
                          colorText: Colors.white,
                          title: "View all",
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                          height: 40,
                          width: size.width * 0.15,
                          sizeFont: 12,
                          circle: 10,
                        ),
                      ],
                    ),
                  ),
                  
                  Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(width: size.width * 0.075,),
                        for(var item in listItem)
                          ItemWidget(item: item),
                        
                        SizedBox(width: size.width * 0.075,),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/homeIcon.png',),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/favIcon.png',),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/shoppingIcon.png',),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/profileIcon.png',),
            label: ""
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}