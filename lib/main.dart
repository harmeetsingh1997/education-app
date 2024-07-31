
import 'package:flutter/material.dart';
import 'second screen/second_screen.dart';




void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset('assets/degree.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(.3),
                    ],
                    begin: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
           Positioned(
            left: 26,
            right: 16,
            bottom: 24,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text(
                  'Be better',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                 RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                         text: 'University admission\nis in',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                      ),
                      TextSpan(
                       text: '  near future',
                      style:TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                      ),
                  ],
                  ),
                 ),
             const  SizedBox(
                  height: 15,
                ),
                 GestureDetector(
                   onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const SecondScreen(),),
                   );
                 },
                   child: Container(
                    height: 54,
                    decoration: BoxDecoration(
                      color: const Color(0xff7d69f9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        "Get started",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                                   ),
                 )

             ],
        )
      ),
      ],
       ),
    ),
    );
  }
}

