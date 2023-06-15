import 'package:health_time/models/postgres_connection.dart';

class User {
  String? userName;
  String? passWord;
  int? idUser;
  String? nomeCompleto;
  String? email;
  bool? ativo;
  String? tipoSanguineo;
  String? altura;
  String? peso;
  double? massaCorporal;
  DateTime? dataNascimento;

  User({
    this.userName,
    this.passWord,
    this.idUser,
    this.nomeCompleto,
    this.email,
    this.ativo,
    this.tipoSanguineo,
    this.altura,
    this.peso,
    this.massaCorporal,
    this.dataNascimento,
  });

  Future<List<dynamic>> encontrarExames(int id) async {
    PostgresConnection connection = PostgresConnection();

    var result = await connection.query(
        'select e.id, te.tipo_exame, e.id_hemograma, h.data_coleta from exame e '
        'left join tipo_exame te ON te.id = e.id_tipo_exame '
        'left join hemograma h on h.id = e.id_hemograma '
        'left join usuario_exame ue on ue.id_exame = e.id '
        'where ue.id_usuario = @idUsuario ',
        {
          'idUsuario': id,
        });

    List<dynamic> exames = [];

    for (var row in result) {
      exames.add('${row[1]} ${row[3]} ${row[0]}');
    }

    return exames;
  }

  updateInformationUser(
      int id, int peso, double altura, String tipoSanguineo, User user) async {
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

    user.massaCorporal = calcularIMC(altura, double.parse(peso.toString()));
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
      'select u.id, u.nome_usuario, u.senha, u.email, u.usuario_ativo, u.nome_completo, '
      'i.altura, i.peso, t.tipo_sanguineo, u.data_nascimento '
      'FROM usuario u '
      'left join informacoes_usuario i on i.id_usuario = u.id '
      'left join tipo_sanguineo t on t.id = i.id_tipo_sanguineo '
      'WHERE u.nome_usuario = @nomeUsuario and u.senha = @senhaUsuario and u.usuario_ativo = true',
      {
        'nomeUsuario': login,
        'senhaUsuario': senha,
      },
    );

    var idUser = int.parse(result[0][0].toString());
    var userName = result[0][1].toString();
    var passWord = result[0][2].toString();
    var email = result[0][3].toString();
    var ativo = result[0][4] is bool;
    var nomeCompleto = result[0][5].toString();
    var altura =
        '${result[0][6]}${result[0][6].toString().length == 3 ? '0' : ''}m';
    var peso = '${result[0][7]}kg';
    var tipoSanguineo = result[0][8].toString();
    var massaCorporal =
        calcularIMC(double.parse(result[0][6]), double.parse(result[0][7]));
    var dataNascimento = result[0][9];

    final User user = User(
      idUser: idUser,
      userName: userName,
      passWord: passWord,
      email: email,
      ativo: ativo,
      nomeCompleto: nomeCompleto,
      altura: altura,
      peso: peso,
      tipoSanguineo: tipoSanguineo,
      massaCorporal: massaCorporal,
      dataNascimento: dataNascimento,
    );

    return user;
  }

  double calcularIMC(double altura, double peso) {
    return (peso / (altura * altura));
  }
}
