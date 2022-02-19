import 'package:dio/dio.dart';
import 'package:i_am_steve_flutter/data/dto/comic_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(
    final Dio dio,
    {required final String baseUrl,}
  ) = _RestClient;

  @GET("/comics.json")
  Future<List<ComicDto>> getComics();

  @GET("/assets/comic/{fileName}")
  @DioResponseType(ResponseType.bytes)
  Future<List<int>> getComicPanel(
    @Path() String fileName,
  );
}