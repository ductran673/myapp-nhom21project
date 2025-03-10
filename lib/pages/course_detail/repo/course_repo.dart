import 'package:myapp/common/models/course_entities.dart';
import 'package:myapp/common/services/http_util.dart';

import '../../../common/models/lesson_entities.dart';

class CourseRepo{
  static Future<CourseDetailResponseEntity> courseDetail({CourseRequestEntity? params}) async {
    var response = await HttpUtil().post("api/courseDetail",
    queryParameters:  params?.toJson());
    return CourseDetailResponseEntity.fromJson(response);
  }

  static Future<LessonListResponseEntity> courseLessonList({LessonRequestEntity? params}) async {
    var response = await HttpUtil().post("api/lessonList",
        queryParameters:  params?.toJson());
    return LessonListResponseEntity.fromJson(response);
  }
}