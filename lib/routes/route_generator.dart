import 'package:flutter/material.dart';
import 'package:fluttercomponentsapp/routes/routes.dart';
import 'package:fluttercomponentsapp/widgets/mascara_validacoes/mascara_validacoes_view.dart';
import 'package:fluttercomponentsapp/widgets/nav_drawer/events_view.dart';
import 'package:fluttercomponentsapp/widgets/nav_drawer/notes_view.dart';


class RouteGenerator {

  static Route<dynamic> genetateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch(settings.name){
      case Routes.events:
        return MaterialPageRoute(
            builder: (_) => EventsView()
        );
      case Routes.notes:
        return MaterialPageRoute(
            builder: (_) => NotesView()
        );
      case Routes.mascara_validacao:
        return MaterialPageRoute(
            builder: (_) => MascaraValidacaoView()
        );
      default:
        _erroRota();
    }

  }
  static Route<dynamic> _erroRota(){
    return MaterialPageRoute(
        builder:(_){
          return Scaffold(
            appBar: AppBar(
              title: Text("Tela não encontrada"),
            ),
            body: Center(
              child: Text("Tela não encontrada"),
            ),
          );
        }
    );
  }

}