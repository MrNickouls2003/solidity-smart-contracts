//SPDX-License-Identifier: MIT

//Smart Contract que armazena nome, idade e nacionalidade de uma pessoa brasileira. 
//Com os dados da pessoa com o nome Nicolas, 21 para a idade e true para nacionalidade brasileira
//Agora com funções setter e getter e utilizando um metodo construtor

pragma solidity ^0.8.0;

contract AlterData {
    //Declarando variaveis
    string public name; //nome publico para todos
    uint private age; //dados da idade serao privados para todos somente o contrato podera ler
    bool internal brazilian; //internal e o tipo padrao, so esse contrato ou contratos que herdam desse contrato terao acesso ao conteudo dessa variavel

    constructor() {
        name = "Nicolas";
        age = 21;
        brazilian = true;
    }

    function setName(string memory _name) public { // função para quem tiver o contrato mudar o nome
        name = _name; //sobrescrevendo o novo nome
    }

    function setAge(uint  _age) public { // função para quem tiver o contrato mudar a idade
        age = _age; //sobrescrevendo a nova idade
    }

    function getAge() public view returns(uint){ // função para visualizar a idade tornando-a publica
        return age;
    }

    function setNationalityBr(bool  _brazil) public { // função para quem tiver o contrato mudar se é brasileiro
        brazilian = _brazil; //sobrescrevendo a nova nacionalidade
    }

    function getNationalityBr() public view returns(bool){ // função para visualizar a idade tornando-a publica
        return brazilian;
    }

    function addValues(uint _value1, uint _value2) internal pure returns(uint){ //função para somar dois valores
        return _value1 + _value2;
    }

    function incrementAge() external { //incrementar mais um ano de idade
        age = addValues(age, 1);
    }
}