import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/common/utils/app_colors.dart';
import 'package:myapp/common/widgets/app_shadow.dart';
import 'package:myapp/common/widgets/text_widgets.dart';



class AppButton extends StatelessWidget {
  final double width;
  final double height;
   final String buttonName;
   final bool isLogin;
    final  BuildContext? context;
  final void Function()? func;
  const AppButton({Key? key, this.width= 325,this.height= 50,this.buttonName="", this.isLogin=true, this.context,this.func,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        width: width.w,
        height: height.h,

        decoration: appBoxShadow(color:isLogin?AppColors.primaryElement:Colors.white, boxBorder: Border.all(color: AppColors.primaryFourthElementText)),
        child: Center(
          child: Text16Normal(
              text: buttonName,
              color: isLogin ? AppColors.primaryBackground : AppColors.primaryText),),
      ),
    );
  }
}
