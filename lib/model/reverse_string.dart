class RString {
  String reverseString(String str) {
    String reversed = '';
    for (int i = str.length - 1; i >= 0; i--) {
      reversed += str[i];
    }
    return reversed;
  }
}
