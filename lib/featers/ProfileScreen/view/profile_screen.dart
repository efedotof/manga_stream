import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/methods/pagemanagment.dart';
import 'package:multi_charts/multi_charts.dart';
import 'package:provider/provider.dart';

import '../widget/widget.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int length = 3;
  List<double> values1 = [0.4, 0.8, 0.65];
  List<double> values2 = [0.5, 0.3, 0.85];

  @override
  Widget build(BuildContext context) {
    var method = context.watch<PageManagments>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              color: const Color(0xFFF97316),
              child: Stack(
                children: [
                 const Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         SizedBox(
                          height: 20,
                        ),
                        CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(
                                'https://avatars1.githubusercontent.com/u/37634751?s=400&u=f9f573e7ceadee6abe4eb349589c632098f1f07b&v=4')),
                         SizedBox(
                          height: 10,
                        ),
                        Text(
                          'One piece',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        //B8B8B9
                        Text(
                          'email@email.com',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 30,
                      left: 15,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => method.popScreensToScreen(context),
                            child: const Icon(
                              Icons.arrow_back,
                              size: 28,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Profile",
                            style: TextStyle(
                                color: Color(0xFFFFFFFF), fontSize: 22),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ContainerStat(namecont: 'глав',elementcont: 175),
                  const SizedBox(
                    height: 20,
                  ),
                 const  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                                'Комментарии: 0',
                                style: TextStyle(
                                  
                                    fontSize: 18,
                                   ),
                              ),

                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite, color: Colors.green,),
                               SizedBox(width: 6,),
                               Text(
                                    '0',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                       ),
                                  ),
                            ],
                          ),
                           SizedBox(width: 20,),
                          Row(
                            children: [
                              Icon(Icons.thumb_down, color: Colors.red,),
                               SizedBox(width: 6,),
                               Text(
                                    '0',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 18,
                                       ),
                                  ),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),   

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                              padding: const EdgeInsets.all(8),
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.transparent,
                                border: Border.all(width: 1.5, color: const Color(0xFFFBB584)),
                              ),
                              child: const Center(child: Icon(Icons.people, color: Color(0xFFF97316),)) 
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              width: MediaQuery.of(context).size.width * 0.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.transparent,
                                border: Border.all(width: 1.5, color: const Color(0xFFFBB584)),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Text(
                                'Estantes',
                                style: TextStyle(
                                    
                                    fontSize: 18
                                    ),
                              ),
                               SizedBox(width: 10,),
                                  Icon(Icons.arrow_forward_outlined, color: Color(0xFFF97316),),
                                  

                                ],
                              ) 
                            ),
                    ],
                  ),
                   const SizedBox(
                    height: 20,
                  ),   
                  const Text(
                                'Stata',
                                style: TextStyle(
                                   
                                    fontSize: 18
                                    )),
                   const SizedBox(
                    height: 40,
                  ),   
                  
                  const  PieChart(
            values: [0, 0, 0, 0, 0],
            labels: ["Label1", "Label2", "Label3", "Label4", "Label5"],
            sliceFillColors: [
              Colors.blueAccent,
              Colors.greenAccent,
              Colors.pink,
              Colors.orange,
              Colors.red,
            ],
            animationDuration: Duration(milliseconds: 1500),
            legendPosition: LegendPosition.Right,
          ),
           const SizedBox(
                    height: 50,
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
