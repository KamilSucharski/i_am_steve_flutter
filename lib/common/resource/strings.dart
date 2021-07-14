class Strings {
  Strings._();

  // Start
  static const startBodyWithoutProgress = "Updating…";
  static startBodyWithProgress(done, all) => "Updating…\n($done / $all)";

  // Comic
  static comicTitleFormat(number, title) => "#$number $title";

  // Archive
  static comicArchiveFormat(number, title, date) => "#$number $title ($date)";
}