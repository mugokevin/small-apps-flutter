import 'package:flutter/material.dart';
import 'quote.dart';



class QuoteCard extends StatelessWidget {

  final Quote quote;
  final  delete;
  QuoteCard({required this.quote, required this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16,16,16,0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black
              ),
            ),
            SizedBox(height: 8,),
            TextButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('Delete Quote')
            )
          ],
        ),
      ),
    );
  }
}
