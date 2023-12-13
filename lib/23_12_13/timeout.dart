Future<String> timeoutFuture() async {
  String result = await Future.delayed(Duration(seconds: 6))
      .timeout(const Duration(seconds: 5), onTimeout: () => "timeout");
  print(result);
  return 'ok';
}

void main() {
  timeoutFuture();
}
