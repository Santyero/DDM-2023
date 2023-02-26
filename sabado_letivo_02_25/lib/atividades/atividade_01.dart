void verificaFuncoes() {
  // calcula salario local sem retorno
  calcularSalarioCMD();

  // calcula salario com retorno
  int salarioLiquido = calcularSalarioRetorno();
  print("Salário líquido: $salarioLiquido");

  // calcula salario com parametros sem retorno
  calcularSalarioSemRetorno(1000, 100);

  // calcula salario com parametros e retorno
  int salarioLiquido2 = calcularSalario(1000, 100);
  print("Salário líquido: $salarioLiquido2");
}


// função sem retorno e sem parâmetros
void calcularSalarioCMD() {
  int salario = 1000;
  int descontos = 100;
  int salarioLiquido = salario - descontos;
  print("Salário líquido: $salarioLiquido");
}

// função com retorno e sem parâmetros
int calcularSalarioRetorno() {
  int salario = 1000;
  int descontos = 100;
  return salario - descontos;
}

// função sem retorno e com parâmetros
void calcularSalarioSemRetorno(int salario, int descontos) {
  int salarioLiquido = salario - descontos;
  print("Salário líquido: $salarioLiquido");
}


// função com retorno e com parâmetros
int calcularSalario(int salario, int descontos) {
  return salario - descontos;
}