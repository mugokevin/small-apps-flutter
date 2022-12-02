import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
 const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
     Quote(text:'Be yourself;everyone else is already taken',author:'Jackie Chan'),
     Quote(text:'Hang in there. One day this will be worth it', author:'Kevin Mugo'),
     Quote(text: 'I have nothing to declare except my genius', author:'Plato'),
     //Quote(text:'The truth is rarely pure and never simple', author:'Georgy Zhukov')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) {
          return QuoteCard(
              quote:quote,
              delete: (){
                setState(() {
                  quotes.remove(quote);
                });
              }
          );
        }).toList(),
      ),
    );
  }
}


