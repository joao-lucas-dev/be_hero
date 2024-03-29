import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final bool hideButtonBack;
  final bool loading;
  final int countCases;

  const AppBarWidget({
    Key key,
    this.hideButtonBack = true,
    this.countCases = 0,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/logo_red.png'),
                if (hideButtonBack)
                  Text.rich(
                    TextSpan(
                      text: "Total de ",
                      style: TextStyle(
                        color: Color(0xff737380),
                      ),
                      children: [
                        TextSpan(
                          text: '$countCases casos',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                if (!hideButtonBack)
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xFFE02041),
                      size: 24,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
