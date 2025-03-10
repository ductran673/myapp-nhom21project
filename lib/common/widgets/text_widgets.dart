
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/common/utils/app_colors.dart';

Widget text24Normal({String text ="",Color color = AppColors.primaryText, FontWeight fontWeight = FontWeight.normal}){
  return  Text(
    text ,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: 24,
      fontWeight: fontWeight
    ),
  );
}

class Text16Normal extends StatelessWidget {
  final String? text ;
  final  Color color ;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  const Text16Normal({Key? key, this.text ="", this.color= AppColors.primarySecondaryElementText, this.fontWeight= FontWeight.normal, this.textAlign = TextAlign.center}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text! ,
      textAlign: TextAlign.center,
      style:  TextStyle(
          color: color,
          fontSize: 16,
          fontWeight: fontWeight,
      ),
    );
  }
}

class Text13Normal extends StatelessWidget {
  final String? text ;
  final  Color color ;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  const Text13Normal({Key? key, this.text ="", this.color= AppColors.primaryText, this.fontWeight= FontWeight.bold, this.textAlign = TextAlign.start}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text! ,
      textAlign: TextAlign.center,
      style:  TextStyle(
        color: color,
        fontSize: 13,
        fontWeight: fontWeight,
      ),
    );
  }
}


// Widget text14Normal({String text ="", Color color = AppColors.primaryThirdElementText}){
//   return  Text(
//     text ,
//     textAlign: TextAlign.start,
//     style:  TextStyle(
//         color: color,
//         fontSize: 14.sp,
//         fontWeight: FontWeight.normal
//     ),
//   );
// }
class Text14Normal extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;

  const Text14Normal({Key? key, this.text = "", this.color = AppColors.primaryThirdElementText, this.fontWeight = FontWeight.normal
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: color,
          fontSize: 14.sp,
          fontWeight: FontWeight.bold
      ),
    );
  }
}

class Text11Normal extends StatelessWidget {
  final String? text;
  final Color color;

  const Text11Normal({Key? key, this.text = "", this.color = AppColors
      .primaryElementText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: color,
          fontSize: 11.sp,
          fontWeight: FontWeight.normal
      ),
    );
  }
}

class Text10Normal extends StatelessWidget {
  final String text;
  final Color color;

  const Text10Normal({Key? key, this.text = "", this.color = AppColors
      .primaryThirdElementText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: color,
          fontSize: 10.sp,
          fontWeight: FontWeight.normal
      ),
    );
  }
}

Widget textUnderline ({String text=""}){
  return GestureDetector(
    onTap: (){

    },
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12.sp,
        color: AppColors.primaryText,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.primaryText,
      ),
    ),
  );
}


class FadeText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;


  const FadeText ({Key? key, this.text = "", this.color = AppColors
      .primaryThirdElementText, this.fontSize = 10}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: false,
      maxLines: 1,
      textAlign: TextAlign.left,
      overflow: TextOverflow.fade,
      style: TextStyle(
          color: color,
          fontSize: fontSize.sp,
          fontWeight: FontWeight.bold
      ),
    );
  }
}