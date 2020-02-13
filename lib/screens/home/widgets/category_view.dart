import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = ['Trabalho', 'Estudos', 'Casa'];
  int _category = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          disabledColor: Colors.white30,
          onPressed: _category > 0 ? selectBackward : null,
        ),
        Text(
          categories[_category].toUpperCase(),
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, letterSpacing: 1.5),
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          onPressed: _category < categories.length - 1 ? selectForward : null,
          color: Colors.white,
          disabledColor: Colors.white30,
        ),
      ],
    );
  }

  void selectForward() {
    setState(() {
      _category++;
    });
  }

  void selectBackward() {
    setState(() {
      _category--;
    });
  }
}
