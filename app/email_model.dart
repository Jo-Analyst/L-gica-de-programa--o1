class EmailModel {
  String destinatario;
  String assunto;
  String mensagem;
  DateTime dataEnvio;
  String id;

  EmailModel({
    required this.destinatario,
    this.assunto =  '',
    required this.mensagem,
    required this.dataEnvio,
    required this.id,
  });
}
