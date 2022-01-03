import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_design/responsive_page.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() =>_HomePageState();

}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Responsive Design")),
     body: SafeArea(
       child:ResponsiveView(
         mobile: Column(
           children: [
             buildBannerSlider(),
             buildIntroText(),
           ],
         ),
         tab: Row(
           children: [
             buildBannerSlider(),
             SizedBox(width: 24,),
             Expanded(child: buildIntroText()),

           ],
         ),
       ) ,
     ),
   );
  }

  Widget buildBannerSlider(){
    return Container(
      width: 320,
      height: 180,
      decoration:  BoxDecoration(
        gradient: LinearGradient(colors:[Colors.red,Colors.pink]),
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
  Widget buildIntroText(){
    return   Text("Hey there, \nCodex is ecosystem of practical resources for developers who want to \n build high-quality mobile apps",
      style: TextStyle(fontSize:20),);
  }

}