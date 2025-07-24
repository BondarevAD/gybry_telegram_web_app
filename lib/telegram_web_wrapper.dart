abstract class TelegramWebWrapper {
  bool get isSupported;

  void ready();

  String? get userFirstName;

  void disableScroll();
}
