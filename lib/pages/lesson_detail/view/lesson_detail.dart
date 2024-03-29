import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/common/utils/constrants.dart';
import 'package:myapp/common/widgets/app_shadow.dart';
import 'package:myapp/pages/lesson_detail/controller/lesson_controller.dart';
import 'package:video_player/video_player.dart';

class LessonDetail extends ConsumerStatefulWidget {
  const LessonDetail({Key? key}) : super(key: key);

  @override
  ConsumerState<LessonDetail> createState() => _LessonDetailState();
}

class _LessonDetailState extends ConsumerState<LessonDetail> {
  late var args;
  @override
  void didChangeDependencies() {
    var id = ModalRoute.of(context)!.settings.arguments as Map;

    args= id["id"];
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    var lessonData = ref.watch(lessonDataControllerProvider);

    return Scaffold(
      appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
            lessonData.when(data: (data)=>Container(
              width: 325.w,
              height: 200.h,
              child: FutureBuilder(
                future: data.initializeVideoPlayer,
                builder: (context, snapshot){
                  if(snapshot.connectionState==ConnectionState.done) {
                    return videoPlayerController == null ? Container() : Stack(
                      children: [
                        VideoPlayer(videoPlayerController!),
                      ],
                    );

                  }
                  else{
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),

                error: (e,t)=>Text("error"), loading: ()=>Text("Loading"))
         ], )
        )

    );
  }
}
