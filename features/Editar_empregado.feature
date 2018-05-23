#language: pt
#utf-8

@edicao
Funcionalidade: Editar empregado
	Eu como analista
	quero buscar um empregado cadastrado
	para editar seus dados

Cenário: Editar empregado cadastrado
	Dado que eu esteja logada no site da OrangeHRM
	Quando eu acessar a tela de empregados 
	Então irei buscar um empregado cadastrado
	E editarei seus dados