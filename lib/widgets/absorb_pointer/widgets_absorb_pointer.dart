import 'package:flutter/material.dart';

class WidgetsAbsorbPointer extends StatefulWidget {
  WidgetsAbsorbPointer() : super();
  
  @override
  WidgetsAbsorbPointerState createState() => WidgetsAbsorbPointerState();
}

class WidgetsAbsorbPointerState extends State<WidgetsAbsorbPointer> {
  bool isDisabled = true;

  /// Método que altera o status do AbsorbPointer para ativado ou desativado
  _disable() {
    setState(() {
      isDisabled = !isDisabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        /// AbsorbPointer desativa os botões filhos sem desativar suas cores,
        /// diferentemente de quando se passa "null" para o parâmetro "onPressed"
        /// para desabilitar um botão
        child: AbsorbPointer(
          absorbing: isDisabled,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(this.isDisabled ? 'Desabilitados' : 'Habilitados!'),
              SizedBox(height: 20,),
              RaisedButton(
                padding: EdgeInsets.all(5),
                child: Text("Click Me"),
                onPressed: () {},
              ),
              RaisedButton(
                padding: EdgeInsets.all(5),
                child: Text("Click Me"),
                onPressed: () {},
              ),
              RaisedButton(
                padding: EdgeInsets.all(5),
                child: Text("Click Me"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){_disable();},
        icon: Icon(Icons.swap_horizontal_circle),
        label: Text('habilite \nou desabilite \nos botões'),
      ),
    );
  }
}
