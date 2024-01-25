import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  // Qoute firstQuote = Qoute('fsadas', 'sadsdadasdas');
  List<Qoute> quotes = [
    Qoute(text: 'Osca Wild', author: 'Be yourself, everyone else is already taken'),
    Qoute(text: 'Osca Wild', author: 'Be yourself, everyone else is already taken'),
    Qoute(text: 'Osca Wild', author: 'Be yourself, everyone else is already taken')
  ];

  List<String> authors = [

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote){
          return Text('${quote.text} - ${quote.author}');
        }).toList(),
      ),
    );
  }
}


// you can also write like this for the map function:
// quotes.map((quote) => Text(quote)).toList(),
// since it only have a row
