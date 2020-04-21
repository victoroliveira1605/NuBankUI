import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondCard extends StatefulWidget {
  @override
  _SecondCardState createState() => _SecondCardState();
}

class _SecondCardState extends State<SecondCard>
    with AutomaticKeepAliveClientMixin {
  bool _showSaldo = false;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(3),
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.attach_money,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Conta',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showSaldo = !_showSaldo;
                                    });
                                  },
                                  child: SvgPicture.asset(
                                    !_showSaldo
                                        ? 'assets/icons/eye-off-outline.svg'
                                        : 'assets/icons/eye-outline.svg',
                                    color: Colors.grey,
                                    semanticsLabel: 'disable_eye',
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 70),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Saldo disponível',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 5),
                            child: Row(
                              children: <Widget>[
                                _showSaldo
                                    ? Text.rich(
                                        TextSpan(
                                          text: 'R\$ 2.500,56',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 34,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      )
                                    : Container(
                                        width: 200,
                                        height: 30,
                                        color: Colors.grey[100],
                                      )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.monetization_on,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        'Tranferência de R\$ 300,05 recebida de Victor Oliveira ontem',
                        style: TextStyle(color: Colors.black87, fontSize: 13),
                      ),
                    ),
                    Icon(Icons.chevron_right,
                        color: Colors.grey[400], size: 18),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
