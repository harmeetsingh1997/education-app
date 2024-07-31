
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../Third screen/third_screen.dart';



class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFF1b1b1b),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1b1b1b),
        leading: const Padding(
          padding: EdgeInsets.only(left: 16.0,),
          child: CircleAvatar(
            radius: 35,
            backgroundImage: CachedNetworkImageProvider('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg'),
        ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flynn monroe',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            Text(
              'Student',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 8,
              ),
            ),
          ],
        ),

        actions: const [
          Icon(
            Icons.search,
            size:25,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.notifications,
            size:25,
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 500,
            height: 40,
            margin:  const EdgeInsets.only(left:10,right: 10,bottom: 10,top:4,),
            padding: const EdgeInsets.all(7),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFF3d3d3d),
              borderRadius: BorderRadius.circular(15),
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height:25,
                  width:70,
                  decoration: BoxDecoration(

                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:  const Center(
                    child: Text(
                      'Popular',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Competition',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                const Text(
                  'Scholarship',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,

              decoration:  const BoxDecoration(
                color:Color(0xFFf4f7fb),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),  // Top-left corner
                  topRight: Radius.circular(25), // Top-right corner
                ),
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const  Padding(
                    padding: EdgeInsets.only(left:16.0,top: 10,),
                    child: Text(
                      'Filing',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      //Review container

                      Container(
                        height: 40,
                        width: 150,
                        margin: const EdgeInsets.only(left: 15, top: 3,),
                        decoration:  BoxDecoration(
                          color:  const Color(0xFFffffff),
                          borderRadius:  BorderRadius.circular(14),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Review',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 35,
                              margin: const  EdgeInsets.only(right: 10,),
                              decoration: BoxDecoration(
                                color: const Color(0xFFd2b461),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  "4",
                                ),
                              ),

                            ),
                          ],
                        ),
                      ),
                      //accepted container
                      Container(
                        height: 40,
                        width: 150,
                        margin: const EdgeInsets.only(left: 15,  top: 3,),
                        decoration:  BoxDecoration(
                          color:  const Color(0xFFffffff),
                          borderRadius:  BorderRadius.circular(14),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Accepted',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 35,
                              margin: const  EdgeInsets.only(right: 10,),
                              decoration: BoxDecoration(
                                color: const Color(0xFFd2b461),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  "6",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //accepted container
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'University',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                    Container(
                      height: 120,
                      width: 150,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                       child: Stack(
                         children:[
                          Positioned.fill(
                          child: ClipRRect(
                            borderRadius:BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/university_1.PNG',
                              fit: BoxFit.cover,
                            ),
                          ),
                          ),
                           Positioned(
                             top: 12,
                             left:8,
                             child: Container(
                               height: 15,
                               width: 40,
                               decoration: BoxDecoration(
                                 color:const Color(0xFF5f96be),
                                 borderRadius: BorderRadius.circular(15),
                               ),
                               child: const Row(
                                 children: [
                                   Icon(
                                     Icons.star,
                                     size: 15,
                                     color: Colors.white,
                                   ),
                                   Text(
                                       "4.9",
                                       style:TextStyle(
                                         fontSize: 12,
                                         color: Colors.white,
                                       ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           const Positioned(
                             bottom: 7,
                             left: 12,
                             child: Text(
                               'yale',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                           ),
                           ),
                        ],
                       ),
                    ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>  const ThirdScreen(),
                          ),
                          );
                        },
                        child: Container(
                          height: 120,
                          width: 150,
                          margin:const  EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blue,
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                  'assets/University_2.PNG',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                               Positioned(
                                top: 12,
                                left:8,
                                child: Container(
                                  height: 15,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color:const Color(0xFF5f96be),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                      size: 15,
                                      color: Colors.white,
                                      ),
                                      Text(
                                          "4.6",
                                      style:TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                bottom: 7,
                                left: 12,
                                child: Text(
                                  'Princeton',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                   ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.0, top: 7,),
                      child: Text(
                        'Direction',
                      style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                        fontSize: 15,
                      ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0, top:7,),
                      child: Text(
                        'see more',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                  Container(
                    width: 320,
                    height: 65,
                    margin: const EdgeInsets.only(top:8,left: 12,right: 12,),
                    padding:const  EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color:const Color(0xFFffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,

                        ),
                      ],
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(

                          'assets/economic-development.png',
                        ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           const Padding(
                              padding: EdgeInsets.only(left:8.0,),
                              child: Text(
                                'Economics and Finance',
                              style:TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Colors.black,
                              ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 10,),
                                decoration: BoxDecoration(
                                  color:Colors.grey[100],
                                  borderRadius:  BorderRadius.circular(20),
                                ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.trending_up,
                                        size: 9,
                                      ),
                                      Text(
                                        "442",
                                        style:TextStyle(
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ) ,
                                 ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color:Colors.grey[100],
                                    borderRadius:  BorderRadius.circular(20),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.currency_exchange,
                                        size: 9,
                                      ),
                                      Text(
                                        "120",
                                        style:TextStyle(
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ) ,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color:Colors.grey[100],
                                    borderRadius:  BorderRadius.circular(20),
                                  ),
                                  child: const Row(
                                    children: [
                                    Icon(
                                    Icons.bookmark,
                                    size: 9,
                                  ),
                                    Text(
                                      "120",
                                      style:TextStyle(
                                        fontSize: 9,
                                      ),
                                    ),
                                  ],
                                ),
                                ),
                               ]
                            ),
                          ],
                         ),
                        const SizedBox(
                          width: 70,
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          size: 12,
                        ),
                      ],
                    ),
                  ),
                    Container(
                    width: 320,
                    height: 65,
                      margin: const EdgeInsets.only(top:8,left: 12,right: 12,),
                    padding:const  EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color:const Color(0xFFffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                        ),
                      ],
                    ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            height: 60,
                            'assets/program.png',
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            const  Padding(
                               padding: EdgeInsets.only(left: 10.0),
                               child:
                               Text(
                                  'IT architecture',
                                  style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:Colors.black,
                                  ),
                                ),
                             ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 10,),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[100],
                                      borderRadius:  BorderRadius.circular(20),
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.trending_up,
                                          size: 9,
                                        ),
                                        Text(
                                          "224",
                                        style:TextStyle(
                                        fontSize: 9,
                                        ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color:Colors.grey[100],
                                      borderRadius:  BorderRadius.circular(20),
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.currency_exchange,
                                          size:9,
                                        ),
                                        Text(
                                          "420",
                                          style:TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color:Colors.grey[100],
                                      borderRadius:  BorderRadius.circular(20),
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.bookmark,
                                          size:9,
                                        ),
                                        Text(
                                          "210",
                                          style:TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],

                          ),
                        const  SizedBox(
                            width: 116,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            size: 12,
                          ),
                        ],
                      ),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
       bottomNavigationBar:BottomNavigationBar(
          backgroundColor: Colors.blueGrey[50],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.featured_play_list_outlined),
              label: "Documents",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: "Settings",
            ),
          ],
        )
    );
  }
}
