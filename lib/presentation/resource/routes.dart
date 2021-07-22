import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/error/invalid_route_error.dart';
import 'package:i_am_steve_flutter/presentation/view/archive/archive_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/archive/archive_page.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/gallery/comic_gallery_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/gallery/comic_gallery_page.dart';
import 'package:i_am_steve_flutter/presentation/view/start/start_page.dart';

class Routes {
  static const String start = 'start';
  static const String comics = 'comics';
  static const String archive = 'archive';

  static PageRoute<Object> onGenerateRoute(final RouteSettings settings) {
    if (settings.name == null) {
      throw InvalidRouteError();
    }
    final name = Uri.parse(settings.name!).pathSegments[0];
    Widget? page;

    switch (name) {
      case start: {
        page = StartPage();
        break;
      }
      case comics: {
        page = ComicGalleryPage(settings.arguments as ComicGalleryArguments);
        break;
      }
      case archive: {
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