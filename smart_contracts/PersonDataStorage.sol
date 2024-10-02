//SPDX-License-Identifier: MIT

//Smart Contract que armazena nome, idade e nacionalidade de uma pessoa brasileira. 
//Com os dados da pessoa com o nome Nicolas, 21 para a idade e true para nacionalidade brasileira

pragma solidity ^0.8.0;

contract PersonDataStorage {
    //Declarando variaveis
    string public name = "Nicolas"; //nome publico para todos
    uint private age = 21; //dados da idade serao privados para todos somente o contrato podera ler
    bool internal brazilian = true; //internal e o tipo padrao, so esse contrato ou contratos que herdam desse contrato terao acesso ao conteudo dessa variavel
}