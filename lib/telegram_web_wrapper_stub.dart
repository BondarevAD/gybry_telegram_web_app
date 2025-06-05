import 'telegram_web_wrapper.dart';

class TelegramWebWrapperImpl implements TelegramWebWrapper {
  @override
  bool get isSupported => false;

  @override
  void ready() {}

  @override
  String? get userFirstName => null;
}
