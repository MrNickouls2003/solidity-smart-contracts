//SPDX-License-Identifier: MIT

// Smart contract que atribui o estado escolar de um estudante a partir de sua nota.
//O estado começa como vazio antes de qualquer interação com o contrato

// I - Nota maior que 6, o aluno é aprovado
// II - Nota menor que 4, o aluno é reprovado
// III - Se a nota estiver entre 4 e 6 o aluno está de recuperação
// IV - Se a nota for 0, irá aparecer somente reprovado

pragma solidity ^0.8.0;

contract ScholarHistory{
    string public gradeStatus;
    
    constructor(){
        gradeStatus = "Vazio";
    }
    function updateGradeStatus(int _value) public {
        if(_value < 0 || _value > 10){
            gradeStatus = "Insira uma nota valida";
        }
        else {
            if(_value > 6){
                gradeStatus = "Aprovado";
            }
            if(_value < 4){
                gradeStatus = "Reprovado";
            }
            if(_value == 0){
                gradeStatus = "Nota Zero";
            }
            if(_value >= 4 && _value <= 6){
                gradeStatus = "Recuperacao";
            }
        }
    }
}