import 'package:flutter/material.dart';
import 'package:notifications/notification-card.dart';
import 'package:carousel_slider/carousel_slider.dart';
class NotificationsCarousels extends StatefulWidget {
  const NotificationsCarousels({super.key});

  @override
  State<NotificationsCarousels> createState() => _NotificationsCarouselsState();
}

class _NotificationsCarouselsState extends State<NotificationsCarousels> {
  // int _current = 0;
  // final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/menu.png",width: 30,height: 30,),
        title: const Text("Home",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
        backgroundColor: const Color.fromRGBO(106, 35, 79, 1),
        actions: const [
          Icon(Icons.notifications,size: 30,),
          SizedBox(width: 20,),
          Icon(Icons.search,size: 30,),
        ],
      ),
      body: Stack(
        fit:StackFit.loose,
          children: [
            Container(
              height: 100,
              // transformAlignment: AlignmentGeometry,
              alignment: const Alignment(0, 0),
              margin: const EdgeInsets.all(0),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(106, 35, 79, 1),
              ),
              
            ),
            CarouselSlider(
              items: const [
                NotificationCard(),
                NotificationCard(),
                NotificationCard(),
                NotificationCard(),
              ], 
              options: CarouselOptions(
                autoPlay: false,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
                scrollDirection: axisDirectionToAxis(AxisDirection.right)
              ),
            ),
            
          ],
        ),
    );
  }
}