import 'package:flutter/material.dart';


class CoolButton extends StatelessWidget {
  final Function callbackinbut;
  final String buttontext;
  final int pagenr;
  const CoolButton({Key? key, required this.callbackinbut, required this.buttontext, required this.pagenr}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:300,
      height:40,
      child:ElevatedButton(
        style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber, // background
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          //side: const BorderSide(color: Colors.blue)
        )


        ),
        onPressed: ()
        {
          callbackinbut(pagenr);
        },
        child:Text(buttontext,style: const TextStyle(
          fontSize: 20,
          color:Color.fromARGB(255, 0, 0, 0),
          fontStyle: FontStyle.italic)
        )
      ),
    );
  }
}