import 'package:i_am_steve_flutter/data/dto/comicDTO.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/util/mapper.dart';

class ComicMapper implements Mapper<ComicDTO, Comic> {

  @override
  Comic map(final ComicDTO input) => Comic(
    input.number,
    input.title,
    input.date
  );
}