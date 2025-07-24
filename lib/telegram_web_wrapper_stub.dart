import 'telegram_web_wrapper.dart';
import 'dart:js' as js;

class TelegramWebWrapperImpl implements TelegramWebWrapper {
  @override
  bool get isSupported => false;

  @override
  void ready() {}

  @override
  String? get userFirstName => null;

  @override
  void disableScroll() {
    js.context['Telegram']['WebApp'].callMethod('ready');

    // Отключаем вертикальный свайп‑закрытие
    js.context['Telegram']['WebApp'].callMethod('disableVerticalSwipes');
  }
}
