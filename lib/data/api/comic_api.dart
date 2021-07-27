import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:i_am_steve_flutter/data/dto/comic_dto.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/configuration.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';

class ComicApi {

  final Dio _dio;
  final Configuration _configuration;

  ComicApi(this._dio, this._configuration);

  Future<List<ComicDto>> getComics() => _dio
    .get<List<dynamic>>(_configuration.getBaseUrl() + Consts.comicMetadataFileName)
    .then((response) => (response.data as List<dynamic>)
      .map((dynamic item) => ComicDto.fromJson(item as Map<String, dynamic>))
      .toList()
    );

  Future<Uint8List> getComicPanel(final String fileName) => _dio
    .get<List<int>>(
      _configuration.getBaseUrl() + 'assets/comic/$fileName',
      options: Options(responseType: ResponseType.bytes)
    )
    .then((response) => Uint8List.fromList(response.data!));
}