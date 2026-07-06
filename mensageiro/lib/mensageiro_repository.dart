import 'dart:convert';
import 'dart:io';

import 'package:mensageiro/mensageiro_model.dart';
import 'package:uuid/uuid.dart';

class MensageiroRepository {
  final File _arquivo = File('dados/db.json');

  List<MensageiroModel> buscarTodasAsMensagens() {
    try {
      if (_arquivo.existsSync()) {
        var conteudo = _arquivo.readAsStringSync();

        if (conteudo.isEmpty) return [];

        var dados = jsonDecode(conteudo);

        if (dados == null || dados['mensagens'] == null) return [];

        List<dynamic> mensagens = dados['mensagens'];

        return mensagens
            .map(
              (mensagem) => MensageiroModel(
                id: Uuid().v4(),
                texto: mensagem['texto'],
                contato: mensagem['contato'],
              ),
            )
            .toList();
      } else {
        print('Mensagem não encontrado.');
        return [];
      }
    } catch (e) {
      print('Erro ao buscar as mensagens $e');
      return [];
    }
  }
}
