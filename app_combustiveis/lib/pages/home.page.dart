import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:temp/widgets/logo.widget.dart';
import 'package:temp/widgets/submit-form.dart';
import 'package:temp/widgets/success.widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _gasController = new MoneyMaskedTextController();
  var _alcController = new MoneyMaskedTextController();
  var _busy = false;
  var _completed = false;
  var _resultText = "Compensa utilizar álcool";
  var _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(
          milliseconds: 1200,
        ),
        color: _color,
        child: ListView(
          children: <Widget>[
            Logo(),
            _completed
                ? Success(result: _resultText, reset: reset)
                : SubmitForm(
                    gasController: _gasController,
                    alcController: _alcController,
                    busy: _busy,
                    submitFunc: calculate,
                  ),
          ],
        ),
      ),
    );
  }

  Future calculate() {
    String text = "Compensa utilizar";
    double alc =
        double.parse(_alcController.text.replaceAll(new RegExp(r'[,.]'), '')) /
            100;
    double gas =
        double.parse(_gasController.text.replaceAll(new RegExp(r'[,.]'), '')) /
            100;
    double resultado = alc / gas;

    setState(() {
      _completed = false;
      _busy = true;
      _color = Colors.deepPurple;
    });

    return new Future.delayed(
      const Duration(seconds: 1),
      () => {
        setState(() {
          if (resultado >= 0.7) {
            _resultText = "$text Gasolina!";
          } else {
            _resultText = "$text Álcool";
          }

          _busy = false;
          _completed = true;
        })
      },
    );
  }

  reset() {
    setState(() {
      _alcController = new MoneyMaskedTextController();
      _gasController = new MoneyMaskedTextController();
      _completed = false;
      _busy = false;
      _color = Colors.blue;
    });
  }
}
