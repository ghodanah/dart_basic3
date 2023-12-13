import 'dart:io';

File file = File('sample.txt');
File copyFile = File('sample_copy.txt');

Future<void> copySample() async {
    // 1. 파일 읽교 카피하기
    copyFile.writeAsString(await file.readAsString());
}


// 2. 글자 list화 하기
Future<void> changeList() async {
  List<String> lines = await copyFile.readAsLines();

  List<String> newLines = [];
  // 3. 한석봉을 김석봉으로 바꾸기
  for(String line in lines) {
    if(line.contains('한석봉')) {
      line = line.replaceAll('한석봉', '김석봉');
      newLines.add(line);
    } else {
      newLines.add(line);
    }
  }

  //4. 파일 덮어쓰기
  copyFile.writeAsString(newLines.join('\n'));
  // list를 세로로 나타내고 싶을 때 .join('\n) 사용 => split 사용 안됨
}



void main() async{
  await copySample();
  await changeList();
  await Future.error(Exception('파일을 찾을 수 없습니다.')); // 모르겠다......
}