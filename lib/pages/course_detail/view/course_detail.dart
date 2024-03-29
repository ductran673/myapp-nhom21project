import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/common/utils/app_bar.dart';
import 'package:myapp/common/utils/app_colors.dart';
import 'package:myapp/common/utils/constrants.dart';
import 'package:myapp/common/utils/image_res.dart';
import 'package:myapp/common/widgets/app_shadow.dart';
import 'package:myapp/common/widgets/image_widgets.dart';
import 'package:myapp/common/widgets/text_widgets.dart';
import 'package:myapp/pages/course_detail/controller/course_controller.dart';
import 'package:myapp/pages/course_detail/view/widget/course_detail_widgets.dart';


class CourseDetail extends ConsumerStatefulWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CourseDetailState();
}
  class _CourseDetailState extends ConsumerState<CourseDetail>{
  late var args;
  
  @override
  void didChangeDependencies() {
    var id = ModalRoute.of(context)!.settings.arguments as Map;
 
    args= id["id"];
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    var courseData = ref.watch(courseDetailControllerProvider(index: args.toInt()));
    var lessonData = ref.watch(courseLessonListControllerProvider(index:args.toInt()));
    return Scaffold(
      appBar: buildGlobalAppBar(title: "Course detail"),
      body: Padding(
        padding: EdgeInsets.only(left: 25.w, right: 25.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              courseData.when(data: (data)=>data==null
                  ?const SizedBox()
                  :Column(
                children: [
                  CourseDetailThumbnail(courseItem: data),
                  CourseDetailIconText(courseItem: data),
                  CourseDetailDescription(courseItem: data),
                  const CourseDetailGoBuyButton(),
                  CourseDetailIncludes(courseItem: data),
                ],
              ), error: (error, traceStack) => const Text("Error loading the data"),
                loading: () => SizedBox(
                  height: 500.h,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                )),
              lessonData.when(data: (data)=>data==null
                  ?const SizedBox()
                  :LessonInfo(lessonData: data, ref: ref,),
                  error: (error, traceStack) => const Text("Error loading the lesson data"),
                  loading: () => SizedBox(
                    height: 500.h,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  )),
            ],
          ),
        ),

      ),
    );
  }


}
// courseData.when(
// data: (data) => data == null
// ? const SizedBox()
//     : SingleChildScrollView(
// child: Padding(
// padding: EdgeInsets.only(left: 25.w, right: 25.w),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// Column(

// )
//
// ],
// ),
// ),
// ),
