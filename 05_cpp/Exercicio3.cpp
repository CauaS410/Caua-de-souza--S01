#include <iostream>
#include <locale>
#include <list>
using namespace std;

class Pessoa{
	protected:
		string nome;
		
	public:		
		Pessoa(string nome){
			this -> nome = nome;
		}
		
		virtual void apresentar(){
			cout << "Olá, meu nome é " << nome << " e eu sou uma pessoa." << endl;
		}
};

class Professor : public Pessoa{
	private:
		string disciplina;

	public:
		Professor(string nome, string disciplina) : Pessoa(nome){
			this -> disciplina = disciplina;
		}
		
		void apresentar(){ // não compila se tiver override
	        cout << "Olá, meu nome é " << nome << " e eu sou um professor de " << disciplina << "." << endl;
	    }
};

class Aluno : public Pessoa{
	private:
		string curso;
		int matricula;

	public:
		Aluno(string nome, string curso, int matricula) : Pessoa(nome){
			this -> curso = curso;
			this -> matricula = matricula;
		}
		
		void apresentar(){ 
	        cout << "Olá, meu nome é " << nome << " e eu sou um aluno de " << curso << "." << endl;
	    }
};

int main(){
	list <Pessoa*> pessoas;
	list <Pessoa*>::iterator aux;
	
	Pessoa* pessoa1 = new Pessoa("Pedro");
	Professor* pessoa2 = new Professor("Ynoguti", "c04");
	Aluno* pessoa3 = new Aluno("Pedro", "GES", 420);
	
	pessoas.push_back(pessoa1);
	pessoas.push_back(pessoa2);
	pessoas.push_back(pessoa3);
	
	for(aux = pessoas.begin(); aux != pessoas.end(); aux++){ 
		Pessoa* p = *aux;
		p -> apresentar();
	}
	
	delete pessoa1;
	delete pessoa2;
	delete pessoa3;
	
	return 0;
}
