import 'package:flutter/material.dart';
import 'package:tarea1/game.dart';
import 'package:tarea1/main.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Perfil"),
      ),
      body:  Center(
        child: Padding(
          padding: EdgeInsets.all(70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
                Text("Introduce tu nombre de usuario",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.purpleAccent,fontSize: 20.0)),
                Padding(
                  padding:EdgeInsets.all(20.0),
                  child: TextField(
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=> MyStatefulWidget()));  
                  }, 
                  child:  Text("Guardar nombre usuario"))
            ],
          ),
        ),
      ),
    );
  }
}
