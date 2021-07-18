import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/data/dto/comic_dto.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/configuration.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';

class ComicAPI {

  final Dio _dio = GetIt.I.get<Dio>();
  final Configuration _configuration = GetIt.I.get<Configuration>();

  Future<List<ComicDTO>> getComics() => _dio
    .get(_configuration.getBaseUrl() + Consts.COMIC_METADATA_FILE_NAME)
    .then((response) => response.data as List)
    .asStream()
    .flatMapIterable((item) => Stream.value(item))
    .map((item) => ComicDTO.fromJson(item))
    .toList();

  Future<ByteData> getComicPanel(final String fileName) => _dio
    .get(_configuration.getBaseUrl() + 'assets/comic/$fileName')
    .then((response) {
      return response.data as ByteData;
    });
}