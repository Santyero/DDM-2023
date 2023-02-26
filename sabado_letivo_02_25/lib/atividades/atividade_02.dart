// Escopo:
// Funções para o app Fytnez
String auth = '123456';

class Pessoa {
  int id;
  String nome;
  DateTime idade;
  int peso;
  int altura;
  double imc;

  Pessoa({required this.id, required this.nome, required this.idade, required this.peso, required this.altura, this.imc = 0});
}

List<Pessoa> pessoas = [
  Pessoa( id: 1, nome: 'Fytnez', idade: DateTime.now(), peso: 80, altura: 180),
  Pessoa(id: 2, nome: 'Fytnez', idade: DateTime.now(), peso: 80, altura: 180)
];

void logar(String auth) {
  auth = auth;
  print("Logado!");
}

void setIdade (DateTime idade, int pessoaId) {
  Pessoa pessoa = pessoas.firstWhere((pessoa) => pessoa.id == pessoaId);
  pessoa.idade = idade;
}

void setPeso (int peso, int pessoaId) {
  Pessoa pessoa = pessoas.firstWhere((pessoa) => pessoa.id == pessoaId);
  pessoa.peso = peso;
}

bool verificarIdade(int pessoaId) {
  Pessoa pessoa = pessoas.firstWhere((pessoa) => pessoa.id == pessoaId);
  return pessoa.idade.isAfter(DateTime.now().subtract(const Duration(days: 365 * 18)));
}

void calcularIMCs() {
  for (var pessoa in pessoas) {
      pessoa.imc = pessoa.peso / (pessoa.altura * pessoa.altura);
  }
}

List<Pessoa> getPessoas() {
  return pessoas;
}

String getAuth() {
  return auth;
}

void limparPessoas() {
  pessoas = [];
  print("Dados limpos!");
}

limparDadosPessoas([int? pessoaId]) {
  if (pessoaId != null) {
    Pessoa pessoa = pessoas.firstWhere((pessoa) => pessoa.id == pessoaId);
    pessoa.idade = DateTime.now();
    pessoa.peso = 0;
    pessoa.altura = 0;
    pessoa.imc = 0;
    return;
  } else {
    for (var pessoa in pessoas) {
      pessoa.idade = DateTime.now();
      pessoa.peso = 0;
      pessoa.altura = 0;
      pessoa.imc = 0;
    }
  }
}

void setPessoa({required int id, String? nome, int? peso, int? altura}) {
  Pessoa pessoa = pessoas.firstWhere((pessoa) => pessoa.id == id);
  if (nome != null) {
    pessoa.nome = nome;
  }
  if (peso != null) {
    pessoa.peso = peso;
  }
  if (altura != null) {
    pessoa.altura = altura;
  }
}

Pessoa getPessoaParams([int? id, String? nome, int? peso, int? altura]) {
  return pessoas.firstWhere((pessoa) =>
    (pessoa.id == id || id != null) && 
    (pessoa.nome == nome || nome == '') && 
    (pessoa.peso == peso || peso == 0) && 
    (pessoa.altura == altura || altura == 0)
  );
}


void deslogar() {
  auth = '';
  print("Deslogado!");
}