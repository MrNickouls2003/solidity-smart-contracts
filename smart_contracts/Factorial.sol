//SPDX-License-Identifier: MIT

//Smart contract que calcula o resultado fatorial de um número N

pragma solidity ^0.8.0;

contract Factorial{
    function fat(uint256 _N) public pure returns(uint256){
        uint256 i;
        uint256 f = 1;
        for(i = 1; i <= _N; i++){
            f = f * i;
        }
        return f;
    }
    function fatw(uint256 _N) public pure returns(uint256){
        uint256 i = 1;
        uint256 f = 1;
        while(i <= _N){
            f = f * i;
            i++;
        }
        return f;
    }
}