import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

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
    return Container(
      //color: Colors.black.withOpacity(0.1),
      height: 60,
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(128),
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.search),
          Container(
            width: 250,
            padding: EdgeInsets.only(left: 10),
            child: TextFormField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.go,
              decoration: InputDecoration(
                labelText: "Search...",
                border: InputBorder.none,
                labelStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
