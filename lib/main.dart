import 'dart:math';
import 'package:flutter/material.dart';
import 'CoolButton.dart';
import 'RedBox.dart';
int b=0;
String autor='';
bool aut=true;
TextEditingController con=TextEditingController();
var list=['Eminescu','Blaga','Arghezi','Stănescu','Bacovia','Barbu'];
int rand=0;
void main() {
  runApp(const MyApp()
  );
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  void callback(int pagenr)
  {
    setState((){
      b=pagenr;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',
      home:((){
        if(b==0)
        {
          return WelcomePage(callbackinwid: callback);
        }
        /*else if(b==1)
        {
          return SecondRoute(callbackinwid: callback);
        }*/
        else if(b==2)
        {
          return Dramatic(callbackinwid: callback);
        }
        else if(b==3)
        {
          return Leoaica(callbackinwid: callback);
        }
        else if(b==4)
        {
          autor='';
          aut=true;
          return GenerareAutor(callbackinwid: callback);
        }
        else if(b==5)
        {
          return Secure(callbackinwid: callback);
        }
      }())
    );
  }
}


class WelcomePage extends StatefulWidget {
  final Function callbackinwid;
  const WelcomePage({Key? key, required this.callbackinwid}) : super(key: key);


  @override
  State<WelcomePage> createState() => _WelcomePageState();
}


class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Colors.black,
        child:Stack(children:<Widget>[
          Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
            RedBox(
            children: <Widget>[
              const Text(
                'Funcții speciale',
                style:TextStyle(
                  fontSize:40,
                  color:Color.fromARGB(255, 0, 255, 255),
                  fontWeight:FontWeight.w700)),
              const SizedBox(
              height: 15,
              width: 50,
            ),
              CoolButton(
                callbackinbut: widget.callbackinwid,
                buttontext:'Generare autor random',
                pagenr:4
              ),
                const SizedBox(
                height:20,
                width:20,
              ),
            ],
            ),
            const SizedBox(
              height: 20,
              width: 50,
            ),
            RedBox(
            children: <Widget>[
              const Text(
                'Scheme',
                style:TextStyle(
                  fontSize:40,
                  color:Color.fromARGB(255, 0, 255, 255),
                  fontWeight:FontWeight.w700)),
              const SizedBox(
              height: 15,
              width: 50,
            ),
              CoolButton(
                callbackinbut: widget.callbackinwid,
                buttontext:'Leoaică tânără,iubirea',
                pagenr:3
              ),
                const SizedBox(
                height:20,
                width:20,
              ),
            ],
            ),
            const SizedBox(
              height: 20,
              width: 50,
            ),
            RedBox(
            children: <Widget>[
              const Text(
                'Subiectul II',
                style:TextStyle(
                  fontSize:40,
                  color:Color.fromARGB(255, 0, 255, 255),
                  fontWeight:FontWeight.w700)),
              const SizedBox(
              height: 15,
              width: 50,
              ),
              CoolButton(
                callbackinbut: widget.callbackinwid,
                buttontext:'Dramatic',
                pagenr:2
              ),
                const SizedBox(
                height:20,
                width:20,
              ),
            ],
            ),
          ],
          ),
        ),
        ],
        ),
      ),
    );
  }
}




class Dramatic extends StatefulWidget {
  final Function callbackinwid;
  const Dramatic({Key? key, required this.callbackinwid}) : super(key: key);


  @override
  State<Dramatic> createState() => _DramaticState();
}


class _DramaticState extends State<Dramatic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Colors.black,
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Center(child:Image.asset('images/Dramatic.jpeg')),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.all(20),
                child:CoolButton(
                  callbackinbut: widget.callbackinwid,
                  buttontext:'Go back to start!',
                  pagenr:0
               )
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Leoaica extends StatefulWidget {
  final Function callbackinwid;
  const Leoaica({Key? key, required this.callbackinwid}) : super(key: key);


  @override
  State<Leoaica> createState() => _LeoaicaState();
}


class _LeoaicaState extends State<Leoaica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Colors.white,
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Center(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                Image.asset('images/Leoaica1.jpeg'),
                Image.asset('images/Leoaica2.jpeg')
                ],)),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: const EdgeInsets.all(20),
                child:CoolButton(
                  callbackinbut: widget.callbackinwid,
                  buttontext:'Go back to start!',
                  pagenr:0
               )
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class GenerareAutor extends StatefulWidget {
  final Function callbackinwid;
  const GenerareAutor({Key? key, required this.callbackinwid}) : super(key: key);


  @override
  State<GenerareAutor> createState() => _GenerareAutorState();
}


class _GenerareAutorState extends State<GenerareAutor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:const Color.fromARGB(255, 18, 47, 49),
        child:Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget> [
        Container(
          margin: const EdgeInsets.all(20),
          child: const Text('Generare Autor',style:TextStyle(color:Colors.amber,fontSize:100,fontWeight:FontWeight.w700,letterSpacing:1)),
        ),
        SizedBox(
          width:200,
          height:200,
          child:ElevatedButton(
            style:ElevatedButton.styleFrom(
              backgroundColor:Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0),
              ),
           ),
            onPressed:(){setState((){
              if(aut==true)
              {
                rand=Random().nextInt(list.length);
                autor=list[rand];
                aut=false;
              }
              else
              {
                autor='';
                aut=true;
              }
           });},
            child:const Text('Click!',style:TextStyle(color:Colors.amber,fontSize:40,fontWeight:FontWeight.w700))
         ),
        ),
        SizedBox(
          width:800,
          height:100,
          child:Center(child:Text(autor,style:const TextStyle(color:Colors.amber,fontSize:40,fontWeight:FontWeight.w700))),
        ),
        Container(
          margin:const EdgeInsets.all(20),
          child:CoolButton(
            callbackinbut: widget.callbackinwid,
            buttontext:'Go back to start!',
            pagenr:0
          ),
        ),
        ],)
      ),),
    );
  }
}


class Secure extends StatefulWidget {
  final Function callbackinwid;
  const Secure({Key? key, required this.callbackinwid}) : super(key: key);


  @override
  State<Secure> createState() => _SecureState();
}


class _SecureState extends State<Secure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:SizedBox(
          width:300,
          height:300,
          child:Column(children: <Widget>[
            TextField(
            decoration:const InputDecoration(
              border:OutlineInputBorder(),
              hintText:'Secret Code'
            ),
            controller: con,
            onChanged: (value) async {
              if(value=='troll')
              {
                widget.callbackinwid(0);
              }
            },
          ),
          ],
          ),
        ),
      ),
    );
  }
}
