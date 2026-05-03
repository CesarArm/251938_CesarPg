// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Modificadores {
    uint256 private fondos = 0;
    address private owner;

    constructor() {
        owner = msg.sender;
    }

    modifier isOwner() {
        require(msg.sender == owner, "No eres el propiertario");
        _;
    }

    modifier NotCero() {
        require(fondos > 0, "Fondos en cero");
        _;
    }

    function depositarFondos(uint256 monto) public {
        fondos += monto;
    }

    function retirarFondos(uint256 monto) public isOwner{
        // require(msg.sender == owner, "No eres el propiertario");
        require(fondos >= monto, "Saldo insuficiente");
        fondos -= monto;
    }

    function limpiarFondos() public isOwner{
        // require(msg.sender == owner, "No eres el propiertario");
        fondos = 0;
    }

    function consultarFondos() public view returns ( uint256 ) {
        return fondos;
    }
}