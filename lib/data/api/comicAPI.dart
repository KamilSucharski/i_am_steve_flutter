import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/data/dto/comicDTO.dart';
import 'package:i_am_steve_flutter/domain/util/configuration.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';

class ComicAPI {

  final Dio _dio = GetIt.I.get<Dio>();
  final Configuration _configuration = GetIt.I.get<Configuration>();

  Stream<List<ComicDTO>> getComics() => _dio
    .get(_configuration.getBaseUrl() + Consts.COMIC_METADATA_FILE_NAME)
    .asStream()
    .map((response) => jsonDecode(response.toString()) as List<ComicDTO>);

  Stream<ByteData> getComicPanel(final String fileName) => _dio
    .get(_configuration.getBaseUrl() + 'assets/comic/$fileName')
    .asStream()
    .map((response) => response.data as ByteData);
}