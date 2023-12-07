class Book implements Comparable<Book>{
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book({
    required this.title,
    required this.publishDate,
    required this.comment,
  });


  // 제목과 출간일이 같으면 같은 책으로 판단한다. 또한 Set 에 넣으면 동일 객체로 판단한다.
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Book &&
              runtimeType == other.runtimeType &&
              title == other.title &&
              publishDate == other.publishDate;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

  @override
  String toString() {
    return 'Book{title: $title, publishDate: $publishDate, comment: $comment}';

  }

  @override
  int compareTo(Book other) {
    final dateEqual = publishDate.compareTo(other.publishDate);

    if (dateEqual == 0) {
      return title.compareTo(other.title);
    }
    return dateEqual;
  }

  // deep copy 를 지원한다
  Book copyWith({
    String? title,
    DateTime? publishDate,
    String? comment,
  }) {
    return Book(
      title: title ?? this.title,
      publishDate: publishDate ?? this.publishDate,
      comment: comment ?? this.comment,
    );
  }
}

void main() {
  // (확인!)제목과 출간일이 같으면 같은 책으로 판단한다. 또한 Set 에 넣으면 동일 객체로 판단한다.
  final books = <Book>{};

  final b1 = Book(title: '노인과 바다', publishDate: DateTime.now(), comment: '저자: 헤밍웨이');
  final b2 = Book(title: '노인과 바다', publishDate: DateTime.now(), comment: '저자: 헤밍웨이');

  books.add(b1);
  books.add(b2);

  print(books.length);

  // (확인!) Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
  final b3 = Book(title: '선녀와 나무꾼', publishDate: DateTime(2023, 1, 7), comment: '저자: 미상');
  final b4 = Book(title: '언어의 온도', publishDate: DateTime(2016, 8, 19), comment: '저자: 이기주');

  final books2 = <Book>[];
  books2.add(b1);
  books2.add(b3);
  books2.add(b4);
  books2.sort();

  print(books2);

  // (확인!) deep copy 를 지원한다
  final b5 = Book(title: '틀려도 좋다', publishDate: DateTime(2019, 5, 30), comment: '저자: 헤닝 백');
  final b6 = b5.copyWith();

  print(b5 == b6);

  final b7 = b5.copyWith(title: '해와 달이 된 오누이', comment: '저자: 미상');
  print(b7);
}
