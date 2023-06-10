import 'package:health_time/models/postgres_connection.dart';

class User {
  String userName;
  String passWord;
  int? idUser;
  String? nomeCompleto;
  String? email;
  bool? ativo;

  User({
    required this.userName,
    required this.passWord,
    this.idUser,
    this.nomeCompleto,
    this.email,
    this.ativo,
  });

  updateInformationUser(
      int id, int peso, double altura, String tipoSanguineo) async {
    PostgresConnection connection = PostgresConnection();

    await connection.query(
        'update informacoes_usuario set '
        'id_tipo_sanguineo = (select id from tipo_sanguineo where tipo_sanguineo = @tipoSanguineo), '
        'peso = @pesoUsuario, '
        'altura = @alturaUsuario '
        'where id_usuario = @idUsuario ',
        {
          'idUsuario': id,
          'tipoSanguineo': tipoSanguineo,
          'pesoUsuario': peso,
          'alturaUsuario': altura
        });
  }

  Future<List<String>> informacoesUser(int id) async {
    PostgresConnection connection = PostgresConnection();

    var result = await connection.query(
      'select i.altura, i.peso, t.tipo_sanguineo from informacoes_usuario i '
      'left join tipo_sanguineo t on t.id = i.id_tipo_sanguineo '
      'where i.id_usuario = @idUsuario ',
      {'idUsuario': id},
    );

    List<String> informacoes = [];

    informacoes.add(
        '${result[0][0]}${result[0][0].toString().length == 3 ? '0' : ''}m');
    informacoes.add('${result[0][1]}kg');
    informacoes.add(result[0][2].toString());

    return informacoes;
  }

  Future<User> usuarioCadastrado(String login, String senha) async {
    PostgresConnection connection = PostgresConnection();

    var result = await connection.query(
      'select id, nome_usuario, senha, email, usuario_ativo FROM usuario '
      'WHERE nome_usuario = @nomeUsuario and senha = @senhaUsuario and usuario_ativo = true',
      {
        'nomeUsuario': login,
        'senhaUsuario': senha,
      },
    );

    final User user = User(
      idUser: int.parse(result[0][0].toString()),
      userName: result[0][1].toString(),
      passWord: result[0][2].toString(),
      email: result[0][3].toString(),
      ativo: result[0][4] is bool,
    );

    return user;
  }
}
