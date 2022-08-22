import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import 'main.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({ Key? key }) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),

    body: Container(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 30),
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
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.49
              ),
              child: Column(
                children: [
                  
                  Text('Didier Tine',
                  style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
                  Text(
                    'Software Developer',
                    style: TextStyle(color : Colors.white, fontSize: 20)
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 130,
                    child:  TextButton(onPressed: (){}, child: Text('a propos de moi'), 
                  style:TextButton.styleFrom(backgroundColor: Colors.white,
                  primary: Colors.black) ,) ,
                  ),
                  SizedBox(height: 40),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
               
                  IconButton(onPressed: (){}, 
                  icon: Icon(FontAwesomeIcons.instagram,
                  color: Colors.white,)),

                  IconButton(onPressed: (){}, 
                  icon: Icon(FontAwesomeIcons.linkedin,
                  color: Colors.white,)),

                  IconButton(onPressed: (){}, 
                  icon: Icon(FontAwesomeIcons.github,
                  color: Colors.white,)),

                  IconButton(onPressed: (){}, 
                  icon: Icon(FontAwesomeIcons.twitter,
                  color: Colors.white,)),

                   IconButton(onPressed: (){}, 
                  icon: Icon(FontAwesomeIcons.facebook,
                  color: Colors.white,))

                 ],)
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}