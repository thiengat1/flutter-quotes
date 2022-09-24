/*
 * @Description: 
 * @Author: Ian
 * @Date: 2022-09-11 16:12:55
 * @LastEditTime: 2022-09-19 00:45:19
 * @LastEditors: Ian
 */
import 'package:flutter/material.dart';
import 'quote_card.dart';
// ignore: unused_import
import 'quote.dart';

void main() => runApp(const MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'lewis', text: 'test'),
    Quote(author: 'lewis', text: 'test'),
    Quote(author: 'lewis', text: 'test'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Quotes'),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
            children: quotes
                .map((quote) => QuoteCard(
                    quote: quote,
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    }))
                .toList()));
  }
}
