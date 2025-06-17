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

    modifier somenteDono() {
        require(msg.sender == dono, "Voce nao esta autorizado.");
        _;
    }
    
    function setNome(string memory _nome) public somenteDono {
        nome = _nome;
    }

    function setDescricao(string memory _descricao) public somenteDono {
        descricao = _descricao;
    }

    function setQuantidade(uint256 _quantidade) public somenteDono {
        quantidade = _quantidade;
    }

    function setPreco(uint256 _preco) public somenteDono {
        preco = _preco;
    }

    function transferirPropriedade(address novoDono) public somenteDono {
        dono = novoDono;
    }
}

