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
                id: mensagem['id'],
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

  bool excluirMensagem(String id) {
    var mensagens = buscarTodasAsMensagens();
    int quantidadeItens = mensagens.length;

    mensagens.removeWhere((msg) => msg.id == id);

    if (quantidadeItens > mensagens.length) {
      _salvarMensagemNoArquivo(mensagens);
      return true;
    }

    return false;
  }

  void enviarMensagem({required String texto, required String contato}) {
    var mensagens = buscarTodasAsMensagens();

    mensagens.add(
      MensageiroModel(id: Uuid().v4(), texto: texto, contato: contato),
    );
    _salvarMensagemNoArquivo(mensagens);
  }

  void _salvarMensagemNoArquivo(List<MensageiroModel> mensagens) {
    var dados = {
      'mensagens': mensagens
          .map(
            (msg) => {'id': msg.id, 'texto': msg.texto, 'contato': msg.contato},
          )
          .toList(),
    };

    var dadosFormatados = JsonEncoder.withIndent(' ');
    _arquivo.writeAsStringSync(dadosFormatados.convert(dados));
  }
}
