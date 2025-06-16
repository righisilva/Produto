// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract Produto {
    string public nome;
    string public descricao;
    uint256 public quantidade;
    uint256 public preco;
    address public dono;

    constructor (string memory _nome, uint256 _quantidade, uint256 _preco) {
        nome = _nome; 
        quantidade = _quantidade;   
        preco = _preco;
        dono = msg.sender;
    }
    
    function setNome(string memory _nome) public {
        nome = _nome;
    }

    function setDescricao(string memory _descricao) public {
        descricao = _descricao;
    }

    function setQuantidade(uint256 _quantidade) public {
        quantidade = _quantidade;
    }

    function setPreco(uint256 _preco) public {
        preco = _preco;
    }

    function transferirPropriedade(address novoDono) public {
        require(msg.sender == dono, "Apenas o dono atual pode transferir a propriedade.");
        dono = novoDono;
    }


}

