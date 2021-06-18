import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorPage(),
    ),
  );
}



 
class ContadorPage extends StatefulWidget{

  @override
  createState() =>  _ContadorPageState();
  

}

class _ContadorPageState extends State<ContadorPage> {

  
  final _tamanioLetra = new TextStyle(fontSize:25);
  int  _conteo = 10;

  @override
   @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text('Increment & Decrement'),
      centerTitle: true,
      elevation: 10,
    ),  
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Points:', style: _tamanioLetra),
          Text( '$_conteo' , style: _tamanioLetra),
        ],  
      ) 
    ),
    //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //cambiar la posicion del boton
    floatingActionButton: _crearBotones()
    
    );
  }
  
  Widget _crearBotones(){
    
    return Row(
       mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
    FloatingActionButton( onPressed:  _restar, child: Icon(Icons.remove),backgroundColor: Colors.lime,),
    Expanded(child: SizedBox()),
    SizedBox(width: 5.0),
    FloatingActionButton( onPressed: _sumar, child: Icon(Icons.add),backgroundColor: Colors.green,),

    ],); 
  }

  void _sumar() {
    
    setState(() => _conteo++);
  }

  void _restar(){
    setState(() => _conteo--);
  }

}