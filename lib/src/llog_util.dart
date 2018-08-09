class LLogUtil {
  static bool isDebug = true;

  static void e(String str) {
    if (isDebug) {
      print("thl e " + str);
    }
  }
}
