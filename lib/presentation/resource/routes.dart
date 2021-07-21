import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/error/invalid_route_error.dart';
import 'package:i_am_steve_flutter/presentation/view/archive/archive_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/archive/archive_page.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/gallery/comic_gallery_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/gallery/comic_gallery_page.dart';
import 'package:i_am_steve_flutter/presentation/view/start/start_page.dart';

class Routes {
  static const String START = 'start';
  static const String COMICS = 'comics';
  static const String ARCHIVE = 'archive';

  static PageRoute<Object> onGenerateRoute(final RouteSettings settings) {
    if (settings.name == null) {
      throw InvalidRouteError();
    }
    final String name = Uri.parse(settings.name!).pathSegments[0];
    Widget? page = null;

    switch (name) {
      case START: {
        page = StartPage();
        break;
      }
      case COMICS: {
        page = ComicGalleryPage(settings.arguments as ComicGalleryArguments);
        break;
      }
      case ARCHIVE: {
        page = ArchivePage(settings.arguments as ArchiveArguments);
        break;
      }
    }

    if (page == null) {
      throw InvalidRouteError();
    }

    return MaterialPageRoute<Object>(builder: (_) => page!, settings: settings);
  }
}