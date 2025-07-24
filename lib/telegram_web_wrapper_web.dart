import 'package:telegram_web_app/telegram_web_app.dart';
import 'telegram_web_wrapper.dart';

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
    // TODO: implement disableScroll
  }
}
