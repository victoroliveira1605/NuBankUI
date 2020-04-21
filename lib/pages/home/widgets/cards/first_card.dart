import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstCard extends StatelessWidget {
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
                              children: <Widget>[
                                Icon(
                                  Icons.credit_card,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Cartão de crédito',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 60),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'FATURA ATUAL',
                                  style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 5),
                            child: Row(
                              children: <Widget>[
                                Text.rich(
                                  TextSpan(
                                    text: 'R\$ ',
                                    children: [
                                      TextSpan(
                                        text: '600',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(text: ',54'),
                                    ],
                                    style: TextStyle(
                                        color: Colors.cyan, fontSize: 28),
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
                                Text.rich(
                                  TextSpan(
                                    text: 'Limite disponível ',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 14),
                                    children: [
                                      TextSpan(
                                        text: 'R\$ 23,33',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Container(
                                  color: Colors.orange,
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Container(
                                  color: Colors.lightBlue,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(color: Colors.lightGreen),
                              )
                            ],
                          ),
                          width: 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2)),
                        ),
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
                    SvgPicture.asset(
                      'assets/icons/account-cash-outline.svg',
                      color: Colors.purple,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        'Compra mais recente em Super Mercado no valor de R\$ 30,05 sabado',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
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
}
