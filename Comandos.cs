// tipos de variáveis

string nome = "nome";
int num = 31;
long longo = 2322222442;
float flutua = 3.14f;  //4 bytes 
double dobro = 6.79292393923023; // 8 bytes
decimal decimais = 10.1m;  // 16 bytes
bool verdade = false;
char letra = 'a';
var variavel = 15; // variável dinâmica, pode ser qualquer coisa

// print 

Console.Write($"Nome = {nome}, Int {num}");
Console.Write($"Nome = {nome}, Int {num}");
Console.WriteLine($"Nome = {nome}, Int {num}");

// if

if(verdade == false){Console.WriteLine("Verdade");}
else{Console.WriteLine("Mentira");}

// função

void salve(string salvada){
    Console.WriteLine($"Eae {salvada}");
}

salve("maria");

// laço

for(int i = 0; i<5; i++){Console.Write(i);}

// vetor e foreach

string[] frutas = {"maçã","banana","laranja"};  // assim que se cria um vetor
foreach(var aux in frutas){Console.WriteLine(aux);} // roda cada elemento dentro da lista

// classes

namespace Personas{ // o básico na criação de packages de classes  
    class Pessoa{
        public string nome;
        public int idade;
    
        public void oi(){Console.WriteLine("Salve");}
    }
}

// para usar classes

using Personas;

Pessoa p = new Pessoa();
p.nome = "Tomé";
p.idade = 32;
p.oi();



