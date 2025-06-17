// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract Produto {
    string public nome;
    string public descricao;
    uint256 public quantidade;
    uint256 public preco;

    constructor (string memory _nome, uint256 _quantidade, uint256 _preco) {
        nome = _nome; 
        quantidade = _quantidade;   
        preco = _preco;
    }
    
    function setNome(string memory _nome) public {
        nome = _nome;
    }

    function getNome() public view returns (string memory) {
        return nome;
    }

    function setDescricao(string memory _descricao) public {
        descricao = _descricao;
    }

    function getDescricao() public view returns (string memory) {
        return descricao;
    }

    function setQuantidade(uint256 _quantidade) public {
        quantidade = _quantidade;
    }

    function getQuantidade() public view returns (uint256) {
        return quantidade;
    }

    function setPreco(uint256 _preco) public {
        preco = _preco;
    }

    function getPreco() public view returns (uint256) {
        return preco;
    }

}

