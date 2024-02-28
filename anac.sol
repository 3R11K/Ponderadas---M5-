// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Anac {
    // idade setada por padrão como 18
    uint public idade;

    //variavel que guarda quem é o owner
    address private owner;

    //construtor chamado no deploy para definir o owner e a idade padrão
    constructor() {
        owner = msg.sender;
        idade = 18;
    }

    //modificador que checa se quem enviou é o owner
    modifier isOwner(){
        require(msg.sender == owner, "Voce nao e o owner");
        _;
    }

    //função de setar idade
    function setIdade(uint newAge) isOwner public {
        idade = newAge;
    }

    //função de retornar idade
    function getIdade() public view returns (uint) {
        return idade;
    }
}
