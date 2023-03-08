import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  final Map<String, dynamic> book;

  const BookDetails({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(book['title'] ?? 'BOOK TITLE'),
        backgroundColor: Colors.pink[200],
        toolbarTextStyle: Theme.of(context)
            .textTheme
            .copyWith(
              headline6: TextStyle(color: Colors.black),
            )
            .bodyText2,
        titleTextStyle: Theme.of(context)
            .textTheme
            .copyWith(
              headline6: TextStyle(color: Colors.black),
            )
            .headline6,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.2, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenSize.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  'https://edit.org/images/cat/book-covers-big-2019101610.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Title: ${book['title'] ?? 'BOOK TITLE'}',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                'Author: ${book['author'] ?? 'XXX'}',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                'Department: ${book['department'] ?? 'XXX'}',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: 16),
              Text(
                'Description:',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                book['description'] ?? 'No description available',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
