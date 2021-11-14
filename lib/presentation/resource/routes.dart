import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/exception/invalid_route_exception.dart';
import 'package:i_am_steve_flutter/domain/util/extension/generic.dart';
import 'package:i_am_steve_flutter/presentation/view/archive/archive_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/archive/archive_page.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/gallery/comic_gallery_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/gallery/comic_gallery_page.dart';
import 'package:i_am_steve_flutter/presentation/view/start/start_page.dart';

class Routes {
  static const String start = 'start';
  static const String comics = 'comics';
  static const String archive = 'archive';

  static PageRoute<Object> onGenerateRoute({
    required final RouteSettings settings,
  }) {
    final Widget? page = settings
      .name
      ?.let((name) => Uri.parse(name).pathSegments[0])
      .let((name) => _parseRoute(
        name: name,
        arguments: settings.arguments
      ));

    if (page == null) {
      throw InvalidRouteException();
    }

    return MaterialPageRoute<Object>(
      builder: (_) => page,
      settings: settings,
    );
  }

  static Widget? _parseRoute({
    required final String name,
    required final Object? arguments
  }) {
    switch (name) {
      case start:
        return StartPage();
      case comics:
        return ComicGalleryPage(arguments: arguments as ComicGalleryArguments);
      case archive:
        return ArchivePage(arguments: arguments as ArchiveArguments);
      default:
        return null;
    }
  }
}