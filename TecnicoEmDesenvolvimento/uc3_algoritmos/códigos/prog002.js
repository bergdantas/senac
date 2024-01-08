//declarei a variável
var textoImpresso;  

//inicializei a variável
textoImpresso = "Berg";

//escrevi texto na tela
console.log(textoImpresso);

//declarei e inicializo a variável ao mesmo tempo 
var numeroImpresso = 7.98;

//escrevi texto na tela
console.log(numeroImpresso);

//concatenar
console.log(textoImpresso + " " + numeroImpresso);

//checagem de tipo
console.log(typeof(textoImpresso));
console.log(typeof(numeroImpresso));

//declaro e inicializo uma constante
const pi = 3.14159265358979323846;

//declaro e inicializo variáveis
var raio = 10;

//calculo o valor da expressão
var circunferencia = 2 * pi * raio;

//escrevo o resultado
console.log(circunferencia);

var maior = 10;
var menor = 1;
var sorteio = Math.round(Math.random() * (maior - menor) + menor);
console.log(sorteio);