import 'package:flutter/material.dart';

class NotificationCard extends StatefulWidget {
  const NotificationCard({super.key});

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return 
        Container(
          height: 225,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              width: 4,
              color: Color.fromARGB(255, 246, 242, 242),
            ),
            borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
            color: Color.fromRGBO(106, 35, 79, 1),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Notifications",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 246, 245, 243)),
              ),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/person-profile.png"),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "     Rohit Mishra",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color:
                                    Color.fromARGB(255, 246, 245, 243)),
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ),
                              Text(
                                "Kondapur",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(
                                        255, 246, 245, 243)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 99, 235, 103))),
                    child: const Text(
                      "Accept",
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
                    Icon(
                      Icons.business_center,
                      color: Colors.white,
                    ),
                    Text(" Wants to do Satyanarayana Katha for his home",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 246, 245, 243))),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.white,
                          ),
                          Text("16 April 2022",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 246, 245, 243)))
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.schedule,
                            color: Colors.white,
                          ),
                          Text("9AM to 12PM",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 246, 245, 243)))
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),

    );
  }
}
