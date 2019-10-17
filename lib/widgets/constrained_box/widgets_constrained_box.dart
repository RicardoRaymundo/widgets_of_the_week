import 'package:flutter/material.dart';

class WidgetsConstrainedBox extends StatefulWidget {
  @override
  _WidgetsConstrainedBoxState createState() => _WidgetsConstrainedBoxState();
}


/// ConstrainedBox é um widget que define a altura e largura máximas e mínimas
/// do seu widget filho. O parâmetro obrigatório constraints recebe um objeto
/// da classe BoxConstraints, que definirá os valores máximos e mínimos de altura
/// e largura.
class _WidgetsConstrainedBoxState extends State<WidgetsConstrainedBox> {

  double _maxWidth = 100;
  double _minHeight = 100;
  String _contraintsStatus = 'Definindo o tamanho dos filhos pelas constraints';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(this._contraintsStatus),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: this._maxWidth,
                ),
                child: Text(
                  'Delicious Candy',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: this._minHeight,
                maxWidth: this._maxWidth,
              ),
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  'Click me!',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(this._minHeight == 100 && this._maxWidth == 100) {
            setState(() {
              this._minHeight = 0;
              this._maxWidth = 200;
              this._contraintsStatus = 'Deixando os filhos definirem seus tamanhos';
            });
          } else {
            setState(() {
              this._minHeight = 100;
              this._maxWidth = 100;
              this._contraintsStatus = 'Definindo o tamanho dos filhos pelas constraints';

            });
          }
        },
      ),
    );
  }
}
