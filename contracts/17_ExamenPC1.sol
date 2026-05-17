// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Hospital251938 {

    struct Paciente {
        uint256 id;
        string nombre;
        uint256 edad;
    }

    Paciente[] public registros;
    address public dirContrato = 0x9396B453Fad71816cA9f152Ae785276a1D578492;

    constructor() {
        console.log("Ejecutado por: 251938 - Cesar Armando Pinillos Gomez");
    }

    function agregarElemento(uint256 _id, string memory _nombre, uint256 _edad) public {
        registros.push(Paciente(_id, _nombre, _edad));
    }

    function contarElementos() public view returns (uint256) {
        console.log("Ejecutado por: 251938 - Cesar Armando Pinillos Gomez");
        return registros.length;
    }
}