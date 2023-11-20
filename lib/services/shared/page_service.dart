import 'package:flutter/material.dart';
import '../../utils/appcolors.dart';
import 'global_variable.dart';

class PageService{
  static BuildContext? homeContext;
  Size pageSize(BuildContext context){
    var context=GlobalVariable.navState.currentContext;
    if(context!=null) {
      var size = MediaQuery.of(context).size;
      return Size(size.width, size.height);
    }
    return const Size(0, 0);
  }

  void showSnackBar(BuildContext context, String content){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(content)));
  }
  static double? headerFontSize=17;
  static double? textFontSize=15;
  static SizedBox textSpaceS=  const SizedBox(
    height: 5,
    width: 5,
  );
  static SizedBox textSpace=  const SizedBox(
    height: 10,
    width: 10,
  );
  static SizedBox textSpaceL=  const SizedBox(
      height: 15,
      width:15
  );
  static SizedBox textSpacexL=  const SizedBox(
    height: 20,
    width: 20,
  );
  static SizedBox textSpacexxL=  const SizedBox(
    height: 30,
    width: 30,
  );
  static TextStyle bigHeaderStyle= TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: AppColor.primaryColor,  fontFamily: 'Inter',);
  static TextStyle headerStyle= TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: AppColor.primaryColor,  fontFamily: 'Inter',);


  static TextStyle labelStyle=TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
      color: AppColor.black);
  static TextStyle whitelabelStyle=TextStyle(
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
      color: AppColor.white);
  static TextStyle textEditStyle=const TextStyle(fontSize: 14,  fontFamily: 'Inter',);
}