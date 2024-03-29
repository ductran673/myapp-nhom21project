import 'package:myapp/common/models/lesson_entities.dart';
import 'package:myapp/common/utils/constrants.dart';
import 'package:myapp/pages/course_detail/repo/course_repo.dart';
import 'package:myapp/pages/lesson_detail/repo/lesson_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:video_player/video_player.dart';


part 'lesson_controller.g.dart';

VideoPlayerController? videoPlayerController;
@riverpod
Future<void> lessonDetailController(
    LessonDetailControllerRef ref, {required int index}) async {

  LessonRequestEntity lessonRequestEntity = LessonRequestEntity();
  lessonRequestEntity.id =index;
  final response = await LessonRepo.courseLessonDetail(params: lessonRequestEntity);
  if(response.code==200){
   var url = "${AppConstants.IMAGE_UPLOADS_PATH}${response.data!.elementAt(0).url!}";
   print('my url is $url');

  videoPlayerController = VideoPlayerController.network(url);
  var initializeVideoPlayerFuture = videoPlayerController?.initialize();
 LessonVideo vidInstance = LessonVideo(
   lessonItem: response.data!,
   isPlay : true,
   initializeVideoPlayer:  initializeVideoPlayerFuture,
   url: url
 );
 ref.read(lessonDataControllerProvider.notifier).updateLessonData(vidInstance);
  }else{
    print('request failed ${response.code} ');
  }


}

@riverpod
class LessonDataController extends _$LessonDataController {
  @override
  FutureOr<LessonVideo> build() async {
    return LessonVideo();
  }

  void updateLessonData(LessonVideo lessons) {
    update((data) =>
        data.copyWith(
          url: lessons.url,
          initializeVideoPlayer: lessons.initializeVideoPlayer,
          lessonItem: lessons.lessonItem,
        ));
  }
}