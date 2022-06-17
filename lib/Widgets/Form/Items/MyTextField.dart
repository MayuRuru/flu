import 'package:flutter/material.dart';

//PARA POCAS CAJAS DE TEXTO! SINO, SAR FORM

class MyTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyTextFieldState();
}

class MyTextFieldState extends State<MyTextField> {

  TextEditingController ctrlName =TextEditingController();
  TextEditingController ctrlAddress =TextEditingController();

  String name="";
  FocusNode node1 = FocusNode(); //crea cajitas de texto
  FocusNode node2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(children: [
      Text(name),
      TextField(
        focusNode:node1 ,
        controller: ctrlName,
        autofocus: true, //el cursor que indica que hay q escribir
        keyboardType: TextInputType.text, //aparece el teclado normal | se puede poner mail q lleva roba
      ),
      TextField(
        focusNode: node2,
        controller: ctrlAddress,
        autofocus: true,
        keyboardType: TextInputType.text,
        textAlign: TextAlign.center,
        //style: TextStyle(color: Colors.green),
        maxLength: 255,
        //maxLines: 3,
        obscureText: true, //para ocultar texto como contrasenyas
        decoration: InputDecoration(
          // hintText: "On vius?",
          //hintStyle: TextStyle(color: Colors.red),
            labelText: "Address", //otra opcion para indicar que escribir
            enabled: false, //RESALTAR LAS CAJITAS
            prefix: Icon(Icons.favorite), //para poner iconito dentro
            disabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.blue,
                    width: 10
                ),
                borderRadius: BorderRadius.circular(30)
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.green,
                    width: 10
                )
            ),
            focusedBorder:OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.red,
                    width: 10
                )
            )
        ),
      ),
      ElevatedButton(onPressed:(){
        FocusScope.of(context).requestFocus(node2); //aca indicamos donde escribir
        setState(() {
          this.name= ctrlName.text.toString();
        });
      },
          child: Text("Save"))],);
  }

}