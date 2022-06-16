import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyFormState();
}

//TEXT FIELD AQUI VA A TENER VALIDACION
//Por ello se crea una clave global

class MyFormState extends State<MyForm> {
  GlobalKey<FormState>formKey=GlobalKey();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController mobileCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController repeatPassCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child:Column(children: [
          TextFormField(
            controller:nameCtrl ,
            decoration: InputDecoration(
                labelText: "Name"
            ),
            validator: (value){
              if(value?.length==0){
                return "Siusplau escriu el teu nom";
              }
              return null;
            },
          ),
          TextFormField(
            controller:emailCtrl ,
            decoration: InputDecoration(
                labelText: "E-mail"
            ),
            validator:(value){
              String pattern =r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
              RegExp regExp = new RegExp(pattern);
              if(value?.length==0){
                return "Siusplau indica el teu mail";
              }else if(!regExp.hasMatch(value.toString())){
                return "Mail no valid";
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
          ),
          TextFormField(
            controller:mobileCtrl ,
            decoration: InputDecoration(
                labelText: "Telefon"
            ),
            validator:(value){
              if(value?.length==0){
                return "Siusplay escriu el teu numero";
              }else if(value?.length!=10){
                return "Numero ha de tenir 10 digits";
              }
              return null;
            },
            keyboardType: TextInputType.number,

          ),
          TextFormField(
            controller:passwordCtrl ,
            decoration: InputDecoration(
                labelText: "Clau de seguretat"
            ),
            obscureText: true,
          ),
          TextFormField(
            controller:repeatPassCtrl ,
            decoration: InputDecoration(
                labelText: "Repetir clau"
            ),
            validator:(value){
              if(value!=passwordCtrl.text.toString()){
                return "Les claus no coincideixen";
              }
              return null;
            },
            obscureText: true,
          ),
          ElevatedButton(onPressed: ()=>save(),
              child: Text("Save"))
        ],) );
  }

  save(){
    if(formKey.currentState!.validate()){
      print("Name: ${nameCtrl.text}");
      print("Mail: ${emailCtrl.text}");
      print("Number: ${mobileCtrl.text}");
      print("Pwd1 ${passwordCtrl.text}");
      print("Pwd2 ${repeatPassCtrl.text}");
      formKey.currentState?.reset();
    }
  }

}