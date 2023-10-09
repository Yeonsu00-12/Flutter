import 'package:example_1/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:example_1/models/book.dart';
import 'package:example_1/repositories/book_repository.dart';

class ListScreen extends StatelessWidget {
  final List<Book> books =
      BookRepository().getBooks(); // 레포의 getBooks() 호출한걸 books에 저장
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('도서 목록 앱'),
      ),
      body: ListView.builder(
        // List 형태로 존재하는 books 데이터를 BookTile에 담아 ListView로 만듬
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookTile(book: books[index]);
        },
      ),
    );
  }
}

class BookTile extends StatelessWidget {
  final Book book;

  BookTile({
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      leading: Image.network(book.image),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              book: book,
            ),
          ),
        );
      }, // title, subtitle, description, image 데이터를 다음 화면으로 이동하며 넘기게 됨
    );
  }
}
