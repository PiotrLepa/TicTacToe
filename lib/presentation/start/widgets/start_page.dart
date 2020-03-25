import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictactoe/presentation/start/widgets/start_page_bottom.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Flexible(
            flex: 2,
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: SvgPicture.asset('assets/login_image.svg'),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Flexible(
            flex: 3,
            child: StartPageBottom(),
          )
        ],
      ),
    );
  }
}
