import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdCard extends StatefulWidget {
  @override
  _ThirdCardState createState() => _ThirdCardState();
}

class _ThirdCardState extends State<ThirdCard> {
  bool _buttonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SvgPicture.asset(
            'assets/icons/gift-outline.svg',
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 50, right: 50, top: 20),
          child: Column(
            children: <Widget>[
              Text(
                'Nubank Rewards',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.',
                style: TextStyle(color: Colors.grey, fontSize: 16),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50, left: 50, top: 92),
          child: Container(
            height: 54,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(width: 0.7, color: Colors.purple[600])),
            child: RaisedButton(
              child: Text(
                'ATIVE O SEU REWARDS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              onHighlightChanged: (pressed) {
                setState(() {
                  _buttonPressed = pressed;
                });
              },
              textColor: _buttonPressed ? Colors.white : Colors.purple[600],
              disabledColor: Colors.purple[600],
              highlightColor: Colors.purple[600],
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              color: Colors.transparent,
              elevation: 0,
              disabledElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              hoverElevation: 0,
            ),
          ),
        )
      ],
    );
  }
}
