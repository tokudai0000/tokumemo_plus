import 'package:logger/logger.dart';
class CoreLogger{
  final logger = Logger();
  void log() {
    logger.d("ロガーのテスト");

    // ログレベルごとに出力
    logger.t("Trace log");

    logger.d("Debug log");

    logger.i("Info log");

    logger.w("Warning log");

    logger.e("Error log", error: 'Test Error');

    logger.f("What a fatal log", error: "エラー", stackTrace: null);
  }
}