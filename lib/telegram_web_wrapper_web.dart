import 'package:telegram_web_app/telegram_web_app.dart';
import 'telegram_web_wrapper.dart';
import 'dart:js' as js;

class TelegramWebWrapperImpl implements TelegramWebWrapper {
  @override
  bool get isSupported => TelegramWebApp.instance.isSupported;

  @override
  void ready() => TelegramWebApp.instance.ready();

  @override
  String? get userFirstName =>
      TelegramWebApp.instance.initDataUnsafe!.user?.firstName;

  @override
  void disableScroll() {
    js.context['Telegram']['WebApp'].callMethod('ready');

    // Отключаем вертикальный свайп‑закрытие
    js.context['Telegram']['WebApp'].callMethod('disableVerticalSwipes');
  }
}
