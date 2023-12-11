import 'dart:io';
void copy(String source, String target) {
  final file = File('source.txt');
  final copyFile = File('target.txt');

  file.writeAsStringSync('Hello World');
  copyFile.writeAsStringSync(file.readAsStringSync());
}

void main() {
  copy('source.txt', 'target.txt');
}