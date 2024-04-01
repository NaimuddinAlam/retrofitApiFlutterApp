import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: "https://fakestoreapi.com/")
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;
  @GET("products")
  Future<List<Post>> getPosts();
}

@JsonSerializable()
class Post {

  int? id;
  String? title;
  Post({ this.id, this.title,});

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}
