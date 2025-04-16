import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({required this.cardColor,required this.cardName,required this.directedPage, super.key});
  final Color cardColor;
  final String cardName;
  final Function directedPage;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => directedPage(context),
        child: Container(
          
          width: 200,
          decoration: BoxDecoration(
            boxShadow:[BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,)] ,
              color: cardColor,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Center(
              child: Text(
            cardName,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
