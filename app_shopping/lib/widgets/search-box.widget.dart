import 'package:flutter/material.dart';

import 'animated.input.widget.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  bool menuOpened = false;

  /* 
    LEMBRE-SE DE INSTANCIAR O CONTROLLER E FAZER O DISPOSE, PARA QUE NÃO OCORRA 
    CONSUMO DESNECESSÁRIO DE MEMÓRIA  
  */

  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 1,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnimatedInput(
          controller: _animationController,
        ),
        FlatButton(
          onPressed: () {
            !menuOpened
                ? _animationController.forward() // play animation
                : _animationController.reverse(); // reverse animation
            menuOpened = !menuOpened;
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _animationController,
            semanticLabel: 'Open Menu',
          ),
        ),
      ],
    );
  }
}
