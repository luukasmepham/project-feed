import 'package:flutter/material.dart';

class Vote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.1,
      child: Column(
        children: [
          TextButton(
            child: Icon(
              Icons.keyboard_arrow_up,
              color: Colors.green,
            ),
            onPressed: () => {},
          ),
          TextButton(
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.green,
            ),
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}
