import 'package:flutter/material.dart';


class RedBox extends StatefulWidget {
  final List<Widget> children;
  const RedBox({Key? key ,required this.children}) : super(key: key);


  @override
  State<RedBox> createState() => _RedBox();
}


class _RedBox extends State<RedBox> {
  @override
  Widget build(BuildContext context) {
    return  Container(
     decoration: BoxDecoration(
        color: Colors.red,
         borderRadius: BorderRadius.circular(30),
     ),
     width:350,
     height:425,
     padding: const EdgeInsets.all(20),
     child: Column(
     children: widget.children,
    ),
  );
  }
}
