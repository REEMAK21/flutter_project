import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int count = 0;
  counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(242, 255, 255, 255),
        
        appBar: AppBar(
          
            centerTitle: true,
            backgroundColor: Color.fromARGB(188, 110, 74, 16),
            title: Text(
              "الَّذِينَ آمَنُوا وَتَطْمَئِنُّ قُلُوبُهُمْ بِذِكْرِ اللَّهِ",
              style: TextStyle(
                
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.50,
                    height: MediaQuery.of(context).size.width / 1.50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(188, 110, 74, 16),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 9),
                          blurRadius: 20,
                          //cant add to color in same container
                        ),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white, //
                        ),
                        child: Text(
                          count.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Transform.translate(
                    offset: Offset(1, 9),
                    child: Container(
                      width: 190,
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 9),
                              blurRadius: 20,
                              color: Colors.black),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => counter(),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(188, 110, 74, 16),
                                shape: BoxShape.circle,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                maximumSize: Size(80, 80)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () => reset(),
                                child: Icon(Icons.wifi_protected_setup),
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
