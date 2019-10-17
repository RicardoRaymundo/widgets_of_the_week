import 'package:flutter/material.dart';

/// Classe que contem três Floating Action Button(FAB), cada um deles com
/// um AnimatedIcon, realizando a animacãoes do ícone ao pressionar
/// seu respectivo botão
class WidgetsAnimatedIcon extends StatefulWidget {
  @override
  _WidgetsAnimatedIconState createState() => _WidgetsAnimatedIconState();
}

class _WidgetsAnimatedIconState extends State<WidgetsAnimatedIcon>
    with TickerProviderStateMixin {
  /// Declarando variáveis de controle de animação dos ícones
  AnimationController _menuAnimationController;
  bool isPlaying = false;

  AnimationController _ellipsisAnimationController;
  bool isPlayingEllipsis = false;

  AnimationController _playAnimationController;
  bool isPlayingPlay = false;

  /// Definindo as propriedades dos controladores de animação
  @override
  void initState() {
    super.initState();
    _menuAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _ellipsisAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _playAnimationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
  }

  /// Métodos que descartam o objeto de controle de animação após o encerramento da mesma
  @override
  void dispose() {
    super.dispose();
    _menuAnimationController.dispose();
    _ellipsisAnimationController.dispose();
    _playAnimationController.dispose();
  }

  /// Métodos que alternam entre os dois estados dos icones
  void _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _menuAnimationController.forward()
          : _menuAnimationController.reverse();
    });
  }

  void _onEllipsisButton() {
    setState(() {
      isPlayingEllipsis = !isPlayingEllipsis;
      isPlayingEllipsis
          ? _ellipsisAnimationController.forward()
          : _ellipsisAnimationController.reverse();
    });
  }

  void _onPlayButton() {
    setState(() {
      isPlayingPlay = !isPlayingPlay;
      isPlayingPlay
          ? _playAnimationController.forward()
          : _playAnimationController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            FloatingActionButton(

              /// Pelo fato de haver mais que um FloatingActionButton nesta classe,
              /// cada botão deve ter uma heroTag única
              heroTag: 3,
              onPressed: _handleOnPressed,
              tooltip: 'Animated Icon',
              child: AnimatedIcon(

                /// AnimatedIcon deve receber como ícone, um ícone da classe
                /// AnimatedIcons
                icon: AnimatedIcons.menu_home,

                /// Progress deve receber a variável de controle de animação
                progress: this._menuAnimationController,
                semanticLabel: 'Show menu',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FloatingActionButton(
              heroTag: 2,
              onPressed: _onEllipsisButton,
              tooltip: 'Animated Icon',
              child: AnimatedIcon(
                icon: AnimatedIcons.ellipsis_search,
                progress: this._ellipsisAnimationController,
                semanticLabel: 'Show menu',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 1,
        onPressed: _onPlayButton,
        tooltip: 'Animated Icon',
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: this._playAnimationController,
          semanticLabel: 'Show menu',
        ),
      ),
    );
  }
}
