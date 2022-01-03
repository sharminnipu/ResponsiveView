import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveView extends StatelessWidget{
  final Widget? mobile;
  final Widget? tab;
  final Widget? dektop;


 const ResponsiveView({Key? key, this.mobile,this.tab, this.dektop}):super(key: key);


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
       if(constraints.maxWidth<640){
         return mobile!;
       }else{
         return tab!;
       }

    });
  }

}