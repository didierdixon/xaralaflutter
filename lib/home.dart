import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import 'main.dart';

class MyHome extends StatefulWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

myAchiev(num, type){
  return Row(
                children: [Text(num ,style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold
                ),),
                
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child:  Text(type) ,
                )
               ],
              );
}

mycomp(tech, icon){
  return  Container(
                        width: 105,
                        height: 115,

                        child: Card(
                          color: Color(0xff252525),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(15) ),

                            child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               
                                Icon(
                                  icon,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 10,),
                                Text(tech , style: TextStyle(
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          ),
                      );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
    appBar: AppBar(

      leading: PopupMenuButton(
        color: Colors.black,
        icon: Icon(Icons.menu),

        itemBuilder: (context) => [
            PopupMenuItem(child: TextButton(
              child: Text('projets', style: TextStyle(
                color: Colors.white
              ),),
              onPressed: () {
                Navigator.pushNamed(context, 'project');
              },
              ),
              value: 1,
              ),

              PopupMenuItem(child: TextButton(
              child: Text('A propos', style: TextStyle(
                color: Colors.white
              ),),
              onPressed: () {
                Navigator.pushNamed(context, 'about');
              },
              ),
              value: 2,
              ),
        ]),
      
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    body: SlidingSheet(
      elevation: 8,
      cornerRadius: 50,
      snapSpec: const SnapSpec(
        // Enable snapping. This is true by default.
        snap: true,
        // Set custom snapping points.
        snappings: [0.4, 0.7, 1.0],
        // Define to what the snappings relate to. In this case, 
        // the total available space that the sheet can expand to.
        positioning: SnapPositioning.relativeToAvailableSpace,
      ),
      // The body widget will be displayed under the SlidingSheet
      // and a parallax effect can be applied to it.
      body: Container(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 25),
              child: ShaderMask(
                shaderCallback: (rect){
                  return LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent])
                    .createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset('assets/didier1.jpg',height: 400,))
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.49
              ),
              child: Column(
                children: [
                  Text('Didier Tine',
                  style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                  Text(
                    'Software Developer',
                    style: TextStyle(color : Colors.white, fontSize: 25)
                  )
                ],
              ),
            )
          ],
        ),
      ),
      
      builder: (context, state) {
        // This is the content of the sheet that will get
        // scrolled, if the content is bigger than the available
        // height of the sheet.
        return Container(
          margin: EdgeInsets.only(left: 40,right: 30,top: 10),
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myAchiev('78', 'Projets'),
                 myAchiev('21', 'Clients'),
                myAchiev('99', 'Messages'),
                ]
              ),
              SizedBox(height: 30),

              Text(
                'Competences',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     mycomp('android', Icons.android),
                     mycomp('web', Icons.web),
                     mycomp('cloud', Icons.cloud),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     mycomp('android', Icons.gamepad_sharp),
                     mycomp('android', Icons.android),
                     mycomp('android', Icons.android),
                    ],
                  )
                ],
              )
            ]
          )
        );
      },
    ),
  );
  
  }
}