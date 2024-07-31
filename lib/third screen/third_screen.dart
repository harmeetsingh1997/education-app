import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';



class ThirdScreen extends StatefulWidget {

    const ThirdScreen ({ super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
           leading:  IconButton(
             icon:  const Icon(
                 Icons.arrow_back,
               size: 20,
                  ),
             onPressed: () {
               Navigator.pop(context);
             },
           ),
          title: const Center(
            child: Text(
              'University',
              style: TextStyle(fontSize: 20,),
            ),
          ),
          actions: const [
            Icon(Icons.bookmark,),
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 220,
              width: 250,
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/University_2.PNG',
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0,top:8,),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left:4.0),
                    child: Text(
                      'Princeton University',
                      style:TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                     size: 20,),
                      Text(
                    "4.8",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,top: 8.0,),
              child: Row(
                children: [
                  Container(
                    height:25,
                    width:49,
                    margin: const EdgeInsets.only(left: 10,),
                    decoration: BoxDecoration(
                      color:Colors.grey[100],
                      borderRadius:  BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.trending_up,
                          size: 18,
                        ),
                        Text(
                          "224",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height:25,
                    width:49,
                    margin: const EdgeInsets.only(left: 10,),
                    decoration: BoxDecoration(
                      color:Colors.grey[100],
                      borderRadius:  BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          size: 18,
                          Icons.currency_exchange,

                        ),
                        Text(
                          "120",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height:25,
                    width:49,
                    margin: const EdgeInsets.only(left: 10,),
                    decoration: BoxDecoration(
                      color:Colors.grey[100],
                      borderRadius:  BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.bookmark,
                          size: 18,
                        ),
                        Text(
                          "180",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
       const Padding(
         padding: EdgeInsets.only(left: 10.0,right: 10, top: 8,),
         child: ReadMoreText(
            'Princeton University is a private Ivy League research university in Princeton, New Jersey. Founded in 1746 in Elizabeth as the College of New Jersey, Princeton is the fourth-oldest institution of higher education in the United States and one of the nine colonial colleges chartered before the American Revolution.',
            trimMode: TrimMode.Line,
            trimLines: 4,
            colorClickableText: Colors.pink,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
           ),
            Container(
              height: 45,
              width: 400,
              margin: const  EdgeInsets.all(8),
              decoration:BoxDecoration(
                color: const Color(0xFF7d69f9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Apply for admission',
                  style:TextStyle(
                    color:Colors.white,
                  ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
