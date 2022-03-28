import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Iphone1313pro8Widget()
          ],
        ),
      ),
    );
  }
}


class Iphone1313pro8Widget extends StatelessWidget {
  final _sizeTextBlack = const TextStyle(fontSize: 18.0, color: Colors.black);
  @override
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    // Figma Flutter Generator Iphone1313pro8Widget - FRAME
    return Container(
        // width: 412,
        // height: 700,
        decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: new Form(
              key: _formKey,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text('Cake-bake', style: TextStyle(fontSize: 55.0, fontFamily: 'Cookie', color: Color.fromRGBO(66, 95, 200, 1))),

                  new Container(
                    child: new TextFormField(
                        decoration: new InputDecoration(labelText: "Имя"),
                        keyboardType: TextInputType.name,
                        style: _sizeTextBlack,
                        validator: (value){
                          if (value!.isEmpty) return 'Пожалуйста введите свое имя';
                        }),
                  ),

                  new Container(
                    child: new TextFormField(
                        decoration: new InputDecoration(labelText: "Фамилия"),
                        keyboardType: TextInputType.name,
                        style: _sizeTextBlack,
                        validator: (value){
                          if (value!.isEmpty) return 'Пожалуйста введите фамилию';
                        }),
                  ),

                  new Container(
                    child: new TextFormField(
                        decoration: new InputDecoration(labelText: "E-mail"),
                        keyboardType: TextInputType.emailAddress,
                        style: _sizeTextBlack,
                        validator: (value){
                          if (value!.isEmpty) return 'Пожалуйста введите свой Email';

                          String p = "[a-zA-Z0-9+.\_\%-+]{1,256}@[a-zA-Z0-9][a-zA-Z0-9-]{0,64}(.[a-zA-Z0-9][a-zA-Z0-9-]{0,25})+";
                          RegExp regExp = new RegExp(p);

                          if (regExp.hasMatch(value)) return null;

                          return 'Это не E-mail';
                        }),
                  ),

                  new Container(
                    child: new TextFormField(
                        decoration: new InputDecoration(labelText: "Пароль"),
                        obscureText: true,
                        style: _sizeTextBlack,
                        validator: (value){
                          if (value!.isEmpty) return 'Пожалуйста введите пароль';

                          if (value.length < 6) return 'Пароль слишком короткий';
                        }),
                  ),

                  new Container(
                    child: new TextFormField(
                        decoration: new InputDecoration(labelText: "Город"),
                        keyboardType: TextInputType.text,
                        style: _sizeTextBlack,
                        validator: (value){
                          if (value!.isEmpty) return 'Пожалуйста введите название города';
                        }),
                  ),

                  new Container(
                    child: new TextFormField(
                        decoration: new InputDecoration(labelText: "Улица"),
                        keyboardType: TextInputType.text,
                        style: _sizeTextBlack,
                        validator: (value){
                          if (value!.isEmpty) return 'Пожалуйста введите название улицы';
                        }),
                  ),

                  // new Container(
                  //   child: new TextFormField(
                  //       decoration: new InputDecoration(labelText: "Дом"),
                  //       keyboardType: TextInputType.number,
                  //       style: _sizeTextBlack,
                  //       validator: (value){
                  //         if (value!.isEmpty) return 'Пожалуйста введите номер дома';
                  //       }),
                  // ),
                  //
                  // new Container(
                  //   child: new TextFormField(
                  //       decoration: new InputDecoration(labelText: "Квартира"),
                  //       keyboardType: TextInputType.number,
                  //       style: _sizeTextBlack,
                  //       validator: (value){
                  //         if (value!.isEmpty) return 'Пожалуйста введите номер квартиры';
                  //       }),
                  // ),

                  new Container(
                    child: new TextFormField(
                        inputFormatters: [MaskTextInputFormatter(mask: "+# ###-###-##-##")],
                        decoration: InputDecoration(hintText: "+_ ___-___-__-__", labelText: "Номер телефона"),
                        keyboardType: TextInputType.phone,
                        style: _sizeTextBlack,
                        validator: (value){
                          if (value!.isEmpty) return 'Пожалуйста введите номер телефона';
                        }),
                  ),

                  new Container(
                    child: new TextFormField(
                        decoration: new InputDecoration(hintText: "@xxxxx", labelText: "Telegram"),
                        keyboardType: TextInputType.emailAddress,
                        style: _sizeTextBlack,
                        validator: (value){
                          if (value!.isEmpty) return 'Пожалуйста введите свой Telegram';

                          String p = "@[a-zA-Z0-9][a-zA-Z0-9-]{0,64}(.[a-zA-Z0-9][a-zA-Z0-9-]{0,25})+";
                          RegExp regExp = new RegExp(p);

                          if (regExp.hasMatch(value)) return null;

                          return 'Пожалуйста введите свой Telegram c @';
                        }),
                  ),

                  new SizedBox(height: 30.0,),

                  new RaisedButton(onPressed: (){
                    if(_formKey.currentState!.validate()) Scaffold.of(context).showSnackBar(SnackBar(content: Text('Данные введены верно'), backgroundColor: Color.fromRGBO(66, 95, 200, 1),));
                  },
                    child: Text('Зарегистрироваться', style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                    ),
                    color: Color.fromRGBO(66, 95, 200, 1),
                  )
                ],
              )
          ),
        )
    );
  }
}

